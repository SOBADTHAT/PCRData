CREATE TABLE 'uek_mission' ('mission_id' INTEGER NOT NULL, 'area' INTEGER NOT NULL, 'description' TEXT NOT NULL, 'mission_condition' INTEGER NOT NULL, 'condition_value_1' INTEGER NOT NULL, 'condition_value_2' INTEGER NOT NULL, 'condition_value_3' INTEGER NOT NULL, 'condition_value_4' INTEGER NOT NULL, 'condition_value_5' INTEGER NOT NULL, 'condition_num' INTEGER NOT NULL, 'reward_type_1' INTEGER NOT NULL, 'reward_id_1' INTEGER NOT NULL, 'reward_num_1' INTEGER NOT NULL, 'reward_type_2' INTEGER NOT NULL, 'reward_id_2' INTEGER NOT NULL, 'reward_num_2' INTEGER NOT NULL, 'reward_type_3' INTEGER NOT NULL, 'reward_id_3' INTEGER NOT NULL, 'reward_num_3' INTEGER NOT NULL, 'reward_type_4' INTEGER NOT NULL, 'reward_id_4' INTEGER NOT NULL, 'reward_num_4' INTEGER NOT NULL, 'reward_type_5' INTEGER NOT NULL, 'reward_id_5' INTEGER NOT NULL, 'reward_num_5' INTEGER NOT NULL, 'system_id' INTEGER NOT NULL, 'event_id' INTEGER NOT NULL, PRIMARY KEY('mission_id'));
INSERT INTO `uek_mission` VALUES (/*mission_id*/10001, /*area*/1, /*description*/"イベントストーリー前編　第3話を見よう", /*mission_condition*/8008, /*condition_value_1*/5035003, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/2500, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/5, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6001, /*event_id*/10035);
INSERT INTO `uek_mission` VALUES (/*mission_id*/10002, /*area*/1, /*description*/"イベントストーリー前編　エンディングを見よう", /*mission_condition*/8008, /*condition_value_1*/5035005, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/5000, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/5, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6001, /*event_id*/10035);
INSERT INTO `uek_mission` VALUES (/*mission_id*/10003, /*area*/1, /*description*/"イベント前編HARDクエスト1-1を3回クリアしよう", /*mission_condition*/9004, /*condition_value_1*/10035201, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/3, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/7500, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/5, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6005, /*event_id*/10035);
INSERT INTO `uek_mission` VALUES (/*mission_id*/10004, /*area*/1, /*description*/"イベント前編HARDボスを3回倒そう", /*mission_condition*/9011, /*condition_value_1*/1003502, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/3, /*reward_type_1*/8, /*reward_id_1*/91002, /*reward_num_1*/50, /*reward_type_2*/2, /*reward_id_2*/31126, /*reward_num_2*/1, /*reward_type_3*/2, /*reward_id_3*/20002, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6007, /*event_id*/10035);
INSERT INTO `uek_mission` VALUES (/*mission_id*/20001, /*area*/2, /*description*/"イベントストーリー後編　第1話を見よう", /*mission_condition*/8008, /*condition_value_1*/5036001, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/10000, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6003, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/20002, /*area*/2, /*description*/"討伐証交換リセットを1回しよう", /*mission_condition*/9006, /*condition_value_1*/0, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/12500, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6002, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/20003, /*area*/2, /*description*/"イベント後編HARDクエスト1-1を3回クリアしよう", /*mission_condition*/9004, /*condition_value_1*/10036201, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/3, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/15000, /*reward_type_2*/2, /*reward_id_2*/20002, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6005, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/20004, /*area*/2, /*description*/"イベント後編HARDボスを3回倒そう", /*mission_condition*/9011, /*condition_value_1*/1003602, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/3, /*reward_type_1*/8, /*reward_id_1*/91002, /*reward_num_1*/75, /*reward_type_2*/2, /*reward_id_2*/31126, /*reward_num_2*/2, /*reward_type_3*/2, /*reward_id_3*/20002, /*reward_num_3*/10, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6007, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/30001, /*area*/3, /*description*/"イベントストーリー後編　第3話を見よう", /*mission_condition*/8008, /*condition_value_1*/5036003, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/17500, /*reward_type_2*/2, /*reward_id_2*/20003, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6003, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/30002, /*area*/3, /*description*/"ミオ（デレマス）の★を2にしよう", /*mission_condition*/6011, /*condition_value_1*/112601, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/2, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/20000, /*reward_type_2*/2, /*reward_id_2*/20003, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/501, /*event_id*/0);
INSERT INTO `uek_mission` VALUES (/*mission_id*/30003, /*area*/3, /*description*/"討伐証交換リセットを3回しよう", /*mission_condition*/9006, /*condition_value_1*/0, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/3, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/22500, /*reward_type_2*/2, /*reward_id_2*/20003, /*reward_num_2*/10, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6002, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/30004, /*area*/3, /*description*/"ミオ（デレマス）を編成してイベント後編HARDボスを倒そう", /*mission_condition*/10000, /*condition_value_1*/1003602, /*condition_value_2*/1, /*condition_value_3*/112601, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/8, /*reward_id_1*/91002, /*reward_num_1*/100, /*reward_type_2*/2, /*reward_id_2*/31126, /*reward_num_2*/2, /*reward_type_3*/2, /*reward_id_3*/20003, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6007, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/40001, /*area*/4, /*description*/"イベントストーリー後編　エンディングを見よう", /*mission_condition*/8008, /*condition_value_1*/5036005, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/25000, /*reward_type_2*/2, /*reward_id_2*/20004, /*reward_num_2*/15, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6003, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/40002, /*area*/4, /*description*/"討伐証交換リセットを5回しよう", /*mission_condition*/9006, /*condition_value_1*/0, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/5, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/27500, /*reward_type_2*/2, /*reward_id_2*/20004, /*reward_num_2*/15, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6002, /*event_id*/10036);
INSERT INTO `uek_mission` VALUES (/*mission_id*/40003, /*area*/4, /*description*/"イベント前編VERY HARDボスを倒そう", /*mission_condition*/9011, /*condition_value_1*/1003503, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/12, /*reward_id_1*/94002, /*reward_num_1*/30000, /*reward_type_2*/2, /*reward_id_2*/20004, /*reward_num_2*/20, /*reward_type_3*/2, /*reward_id_3*/23001, /*reward_num_3*/5, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6010, /*event_id*/10035);
INSERT INTO `uek_mission` VALUES (/*mission_id*/40004, /*area*/4, /*description*/"イベント後編VERY HARDボスを倒そう", /*mission_condition*/9011, /*condition_value_1*/1003603, /*condition_value_2*/0, /*condition_value_3*/0, /*condition_value_4*/0, /*condition_value_5*/0, /*condition_num*/1, /*reward_type_1*/8, /*reward_id_1*/91002, /*reward_num_1*/125, /*reward_type_2*/2, /*reward_id_2*/31126, /*reward_num_2*/4, /*reward_type_3*/2, /*reward_id_3*/20004, /*reward_num_3*/20, /*reward_type_4*/0, /*reward_id_4*/0, /*reward_num_4*/0, /*reward_type_5*/0, /*reward_id_5*/0, /*reward_num_5*/0, /*system_id*/6010, /*event_id*/10036);
