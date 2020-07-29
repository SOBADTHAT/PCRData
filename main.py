from Data import Data
import json

data = Data("zh_redive_master_db_diff-master")
for key in data.unit_list:
    unit = data.unit_list[key]
    unit['promotion'] = unit['promotion'].tolist()
    unit['atk_pattern'] = unit['atk_pattern'].tolist()
with open("data.json", "w",encoding='utf-8')as f:
    f.write(json.dumps(data.unit_list,ensure_ascii=False, indent=4, separators=(',', ': ')))