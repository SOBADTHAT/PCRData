import numpy as np
from utils import *
import json

def ReadFromFile(DataDict, file):
    List = list()
    with open(file, "r", encoding='utf-8', errors='ignore') as file:
        lines = file.readlines()
        count = -1
        for line in lines:
            a = line.strip("\n").split("(")
            ListName = a[0].split()[2].strip("\"")
            a[1] = a[1][:-9]
            a[2] = a[2][:-2]
            name = a[1].split(", ")
            value = a[2].split(", ")
            Dict = dict()
            for obj, obj1 in zip(name, value):
                n = obj.strip("\'\"")
                v = obj1.strip("\'\"")
                Dict[n] = v
            List.append(Dict)
            count = count + 1
    DataDict[ListName] = List

class Data():
    def __init__(self, base_dict):
        self.base_dict = base_dict
        self.unit_list = dict()
        self.equip_list = dict()
        self.unit_name2id = dict()
        self.equip_name2id = dict()
        self.data_dict = dict()
        file = base_dict + "/unit_data.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/unit_skill_data.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/unit_attack_pattern.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/skill_data.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/skill_action.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/unit_promotion.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/equipment_craft.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/equipment_data.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/quest_data.sql"
        ReadFromFile(self.data_dict, file)
        file = base_dict + "/quest_reward_data.sql"
        ReadFromFile(self.data_dict, file)
        self.__GetAllUnit()
        self.__GetAllEquip()

    def __GetAllUnit(self):
        for itemU in self.data_dict['unit_data']:
            if(int(itemU['unit_id'])>190000):
                continue
            unitT = dict()
            unitT['name'] = itemU['unit_name']
            promotion = np.zeros([20, 6]).astype(np.str)
            #-------------------单位装备-------------------
            for itemP in self.data_dict['unit_promotion']:
                if(itemP['unit_id']==itemU['unit_id']):
                    index0 = int(itemP['promotion_level'])-1
                    for i in range(6):
                        key = "equip_slot_{}".format(i+1)
                        promotion[index0][i] = itemP[key]
            unitT['promotion'] = promotion
            #-------------------单位常见数据-------------------
            unitT['speed'] = itemU['move_speed']
            unitT['search_range'] = itemU['search_area_width'];
            #-------------------单位攻击模式-------------------
            attackPattern = np.zeros([2, 20]).astype(np.str)
            for itemA in self.data_dict['unit_attack_pattern']:
                if(itemA['unit_id']==itemU['unit_id']):
                    for i in range(int(itemA['loop_start'])-1):
                        key = 'atk_pattern_{}'.format(i + 1)
                        attackPattern[0][i] = itemA[key]
                    for i in range(int(itemA['loop_end'])-int(itemA['loop_start'])+1):
                        key = 'atk_pattern_{}'.format(i + int(itemA['loop_start']))
                        attackPattern[1][i] = itemA[key]
            unitT['atk_pattern'] = attackPattern
            #-------------------单位技能-------------------
            attackData = []
            itemT = dict()
            itemT['name'] = '攻击'
            itemT['skill_type'] = itemU['atk_type']
            itemT['skill_id'] = '0'
            itemT['skill_cast_time'] = itemU['normal_atk_cast_time']
            itemT['action'] = []
            itemT1 = dict()
            itemT1['action_id'] = '0'
            itemT1['action_type'] = '0'
            itemT['action'].append(itemT1)
            itemT['effect_type'] = 'None'
            attackData.append(itemT)
            for i in range(2):
                sid = "{}{}".format(itemU['unit_id'][:4], "00{}".format(i+2))
                for sdt in self.data_dict['skill_data']:
                    if(sdt['skill_id']==sid):
                        skillData = sdt
                        break
                itemT = dict()
                itemT['name'] = skillData['name']
                itemT['skill_type'] = skillData['skill_type']
                itemT['skill_id'] = sid
                itemT['skill_cast_time'] = skillData['skill_cast_time']
                itemT['action'] = []
                itemT['effect_type'] = 'None'
                for j in range(7):
                    key = "action_{}".format(j+1)
                    actionId = skillData[key]
                    if(actionId==0):
                        break
                    itemT1 = dict()
                    itemT1['action_id'] = actionId
                    for sat in self.data_dict['skill_action']:
                        if (sat['action_id'] == actionId):
                            actData = sat
                            break
                    itemT1['action_type'] = actData['action_type']
                    itemT['action'].append(itemT1)
                attackData.append(itemT)
            if(int(itemU['unit_id'])<190000):
                path = "mdb\\PCR-Timeline-Analysis-Package ver2.0\\trans\\{}.json".format(unitT['name'])
                with open(path, encoding='utf-8') as f:
                    eff = json.load(f)
                    count = 0
                    for adt in attackData:
                        if adt['name'] == '攻击':
                            if (len(eff['Attack']['ActionParametersOnPrefab'])):
                                if (eff['Attack']['ActionParametersOnPrefab'][0]['data']['Details'][0]['data']
                                ['ExecTimeForPrefab'][0]['data']['Time'] == 0 and
                                        len(eff['Attack']['SkillEffects']) == 0):
                                    adt['effect_type'] = 'None'
                                    continue
                                if (eff['Attack']['ActionParametersOnPrefab'][0]['data']['Details'][0]['data']
                                ['ExecTimeForPrefab'][0]['data']['Time'] == 0):
                                    adt['effect_type'] = '远程'
                                    adt['action'][0]['effect_time'] = eff['Attack']['SkillEffects'][0]['data']\
                                        ['ExecTime'][0]['data']
                                else:
                                    adt['effect_type'] = '近战'
                                    adt['action'][0]['effect_time'] = \
                                    eff['Attack']['ActionParametersOnPrefab'][0]['data']['Details'][0]['data']\
                                        ['ExecTimeForPrefab'][0]['data']['Time']
                        else:
                            flag = False
                            for act in adt['action']:
                                act['effect_time'] = 0.0
                                if(int(act['action_id'])==0):
                                    continue
                                t = eff['MainSkillList'][count]['data']['ActionParametersOnPrefab']
                                for et in t:
                                    aid = et['data']['Details'][0]['data']['ActionId']
                                    if(aid==int(act['action_id'])):
                                        if(len(et['data']['Details'][0]['data']['ExecTimeForPrefab'])==0):
                                            act['effect_time'] = 0.0
                                            continue
                                        MaxETime = 0
                                        for eTmp in et['data']['Details'][0]['data']['ExecTimeForPrefab']:
                                            eTime = eTmp['data']['Time']
                                            if(MaxETime<eTime):
                                                MaxETime = eTime
                                        if(eTime>0):
                                            act['effect_time'] = MaxETime
                                            flag = True
                                        else:
                                            eTime = eff['MainSkillList'][count]['data']['SkillEffects'][0]['data']\
                                                ['ExecTime'][0]['data']
                                            act['effect_time'] = eTime
                            count = count + 1
                            if(flag):
                                adt['effect_type'] = '近战'
                            else:
                                adt['effect_type'] = '远程'

            unitT['atk_data'] = attackData
            self.unit_list[itemU['unit_id']] = unitT
            if(int(itemU['unit_id'])<200000):
                self.unit_name2id[itemU['unit_name']] = itemU['unit_id']

    def __GetCraftBasic(self, l):
        compT = l.copy()
        index = 0
        while(len(compT)):
            if(self.equip_list[compT[index][0]]['basic']):
                index = index + 1
                if (index >= len(compT)):
                    break
            else:
                craft = self.equip_list[compT[index][0]]['craft']
                rate = int(compT[index][1])
                for item in craft:
                    compT.append([item[0], str(int(item[1]) * rate)])
                compT = compT[0: index] + compT[index + 1:]
        return compT

    def __GetAllEquip(self):
        for itemE in self.data_dict['equipment_data']:
            EquipT = dict()
            EquipT['name'] = itemE['equipment_name']
            compT = list()
            for itemC in self.data_dict['equipment_craft']:
                if(itemC['equipment_id']==itemE['equipment_id']):
                    for i in range(10):
                        key1 = 'condition_equipment_id_{}'.format(i+1)
                        key2 = 'consume_num_{}'.format(i+1)
                        if(itemC[key1]!='0'):
                            compT.append([itemC[key1], itemC[key2]])
            EquipT['craft'] = compT
            EquipT['basic'] = len(compT) == 0
            self.equip_list[itemE['equipment_id']] = EquipT
            self.equip_name2id[itemE['equipment_name']] = itemE['equipment_id']
        for key in self.equip_list:
            item = self.equip_list[key]
            if(not item['basic']):
                craft_basic = self.__GetCraftBasic(item['craft'])
                item['craft_basic'] = craft_basic
            else:
                item['craft_basic'] = []

    def GetUnitIdByName(self, name):
        return self.unit_name2id[name]

    def GetEquipIdByName(self, name):
        return self.equip_name2id[name]

    def GetUnitNameById(self, id):
        return self.unit_list[id]['name']

    def GetEquipNameById(self, id):
        return self.equip_list[id]['name']

    def ShowUnitPromotionById(self, id):
        promotion = self.unit_list[id]['promotion']
        name = self.unit_list[id]['name']
        lC = 1
        for level in promotion:
            eC = 1
            for e in level:
                if(e=='0.0'):
                    continue
                if(e=='999999'):
                    e_name = "暂未出现"
                else:
                    e_name = self.equip_list[e]['name']
                print(e_name)
                eC = eC + 1
            lC = lC + 1



