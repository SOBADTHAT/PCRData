from utils import *
from Data import Data
import json
import subprocess
'''p = subprocess.Popen(["MemInfo.exe"], stdout=subprocess.PIPE)
own = []
for line in p.stdout.readlines():
    a = line.strip().split()
    own.append([a[0].decode("utf-8"), a[1].decode("utf-8")])'''

data = Data("zh_redive_master_db_diff-master")
id = data.GetUnitIdByName('纯')
data.ShowUnitPromotionById(id)
'''for item in own:
    e_name = TraditionalToSimplified(data.GetEquipNameById(item[0]))
    print("玩家拥有{}件{}".format(item[1], e_name))
print("玩家共有{}种不同的装备".format(len(own)))
'''
pass

with open("mdb\\PCR-Timeline-Analysis-Package ver2.0\\trans\\凯露.json", encoding='utf-8') as f:
    eff = json.load(f)