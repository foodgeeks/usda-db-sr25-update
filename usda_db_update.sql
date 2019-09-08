UPDATE WEIGHT SET Amount = '0.50', Msre_Desc = 'cup' WHERE Amount = '1.000' and Msre_Desc = 'serving 1/2 cup';
UPDATE WEIGHT SET Amount = '0.50', Msre_Desc = 'cup' WHERE Amount = '1.000' and Msre_Desc = 'serving 1/ 2 cup';
UPDATE WEIGHT SET Amount = '0.33', Msre_Desc = 'cup' WHERE Amount = '1.000' and Msre_Desc = 'serving 1/3 cup';
UPDATE WEIGHT SET Amount = '0.25', Msre_Desc = 'cup' WHERE Amount = '1.000' and Msre_Desc = 'serving 1/4 cup';
UPDATE WEIGHT SET Amount = '0.25', Msre_Desc = 'cup' WHERE Amount = '1.000' and Msre_Desc = 'serving .25 cup';

/* Bottle and Glass measurements for red wine and white wine  */
INSERT INTO WEIGHT (NDB_No, Amount, Msre_Desc, Gm_Wgt) values ('14096', '1', 'bottle 750 ml.', '745.6');
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('14096', '3', '1', 'glass', '174.0');
INSERT INTO WEIGHT (NDB_No, Amount, Msre_Desc, Gm_Wgt) values ('14106', '1', 'bottle 750 ml.', '745.6');
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('14106', '3', '1', 'glass', '174.0');

/* https://www.fatsecret.com/calories-nutrition/generic/avocado-raw?portionid=17994&portionamount=1.000 */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt, Num_Data_Pts, Std_Dev) values ("09037", 5, 1, "slice", 10, 0, 0);

/* Adding 1 serving grapes, equal to 1 cup grapes */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('09131', 3, 1.000, 'serving', 92.0);

/* 1 serving almonds, equal to 1/4 cup almonds - http://blog.foodnetwork.com/healthyeats/2013/04/21/how-many-almonds-in-a-serving/ */ 
insert into WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('12061', 7, 1.000, 'serving', 35.75);

/* 1 serving olives = 5 olives */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('09195', 2, 1.000, 'serving', 13.5);

/* 1 serving peanuts = 1 oz peanuts */
insert into WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('16090', 3, 1.000, 'serving', 28.4);  

/* 1 bottle beer */
insert into WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('14003', 3, 1.000, 'bottle', 356.0);

/* 1 walnut */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('12154', 4, 1, 'nut', 2);

/* 1 slice watermelon */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('09326', 7, 1, 'slice', 86);

/* 1 slice sourdough */ 
UPDATE WEIGHT SET Gm_Wgt = 35 WHERE NDB_No = '18029' AND Msre_Desc = 'slice';

/* Adding individual golden raisins, based off black raisins measurement */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('09297', 3, 50, 'raisins', 26);

/* Fixing up some raisin measurements for better calorie matching */
UPDATE WEIGHT SET Msre_Desc = 'oz' WHERE NDB_No = '09298' AND Msre_Desc = 'oz (60 raisins)';
UPDATE WEIGHT SET Msre_Desc = 'box (1.5 oz)' WHERE NDB_No = '09298' AND Msre_Desc = 'small box (1.5 oz)';

/* 1 serving provolone */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('01035', 6, 1, 'serving', 28.4);

/* 1 serving cheddar */
insert into WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) values ('01009', 7, 1, 'serving', 28.0);

/* 1 serving pineapple */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('09266', 6, 1, 'serving', 166);
UPDATE WEIGHT SET Seq = 7 WHERE NDB_No = '09266' AND Seq = 2 AND Msre_Desc = 'fruit';

/* 1 serving cabbage */
UPDATE WEIGHT SET Seq = 9 WHERE NDB_No = '11109' AND Seq = 3 AND Msre_Desc = 'head, large (about 7" dia)';
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('11109', 3, 1, 'serving', 89);

/* 1 serving lamb sirloin chop */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('17019', 3, 1, 'serving', 113.6);

/* tomatoes */
UPDATE WEIGHT SET Msre_Desc = 'wedge' WHERE NDB_No = '11529' AND Msre_Desc = "wedge (1/4 of medium tomato)";

/* cherry tomatoes */
INSERT INTO FOOD_DES (NDB_No, FdGrp_Cd, Long_Desc, Shrt_Desc, ComName, ManufacName, Survey, Ref_Desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor) SELECT 'F0001', FdGrp_Cd, 'Cherry tomatoes, red, ripe, raw', 'Cherry tomatoes, red, ripe, raw', ComName, ManufacName, Survey, Ref_Desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor FROM FOOD_DES WHERE NDB_No = '11529';
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('F0001', 1, 1, 'cherry tomato', 17.0);
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('F0001', 2, 1, 'cup cherry tomatoes', 149.0);
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('F0001', 3, 1, 'serving', 149.0);
INSERT INTO NUT_DATA (NDB_No, Nutr_No, Nutr_Val, Num_Data_Pts, Std_Error, Src_Cd, Deriv_Cd, Ref_NDB_No, Add_Nutr_Mark, Num_Studies, Min, Max, DF, Low_EB, Up_EB, Stat_cmt, AddMod_Date, CC) SELECT 'F0001', Nutr_No, Nutr_Val, Num_Data_Pts, Std_Error, Src_Cd, Deriv_Cd, Ref_NDB_No, Add_Nutr_Mark, Num_Studies, Min, Max, DF, Low_EB, Up_EB, Stat_cmt, AddMod_Date, CC FROM NUT_DATA WHERE NDB_No = '11529';

/* plum / Italian / Roma / San Marzano tomatoes */
INSERT INTO FOOD_DES (NDB_No, FdGrp_Cd, Long_Desc, Shrt_Desc, ComName, ManufacName, Survey, Ref_Desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor) SELECT 'F0002', FdGrp_Cd, 'Italian plum tomatoes, red, ripe, raw', 'Italian plum tomatoes, red, ripe, raw', ComName, ManufacName, Survey, Ref_Desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor FROM FOOD_DES WHERE NDB_No = '11529';
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('F0002', 1, 1, 'plum tomato', 62.0);
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('F0002', 2, 1, 'cup chopped, sliced or diced plum tomatoes', 180.0);
INSERT INTO NUT_DATA (NDB_No, Nutr_No, Nutr_Val, Num_Data_Pts, Std_Error, Src_Cd, Deriv_Cd, Ref_NDB_No, Add_Nutr_Mark, Num_Studies, Min, Max, DF, Low_EB, Up_EB, Stat_cmt, AddMod_Date, CC) SELECT 'F0002', Nutr_No, Nutr_Val, Num_Data_Pts, Std_Error, Src_Cd, Deriv_Cd, Ref_NDB_No, Add_Nutr_Mark, Num_Studies, Min, Max, DF, Low_EB, Up_EB, Stat_cmt, AddMod_Date, CC FROM NUT_DATA WHERE NDB_No = '11529';

/* 1 serving ham */
UPDATE WEIGHT SET Amount = '1', Msre_Desc = 'serving' WHERE NDB_No = '07029' AND Amount = '56.000' AND Msre_Desc = 'grams 1 serving';

/* Proper weight for shrimp */
UPDATE WEIGHT SET Seq = '3' WHERE Msre_Desc = 'large' AND NDB_No = '15151';
INSERT INTO WEIGHT (NDB_No, Seq, amount, Msre_Desc, Gm_Wgt) VALUES ('15151', 2, 1.000, 'medium', 11.0);

/* Fix defaults for decaf tea */
UPDATE WEIGHT SET Seq = '4' WHERE NDB_No = '14352' AND Amount = '1.000' AND Msre_Desc = 'fl oz';
UPDATE WEIGHT SET Seq = '1' WHERE NDB_No = '14352' AND Amount = '1.000' AND Msre_Desc = 'cup (8 fl oz)';
UPDATE WEIGHT SET Seq = '3' WHERE NDB_No = '14352' AND Amount = '1.000' AND Msre_Desc = 'fl oz';

/* crushed ice */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('14429', '5', 1, 'cup, crushed', 140.3);

/* 1 serving raisins */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('09298', 7, 1, 'serving', 43.0);

/* 1 serving coffee */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('14209', 4, 1, 'serving', 340);

/* 1 serving water */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES ('14411', 4, 1, 'serving', 237.0);

/* 1 serving iced tea */
INSERT INTO WEIGHT (NDB_No, Seq, Amount, Msre_Desc, Gm_Wgt) VALUES (14355, 4, 1, "serving (12 fl oz)", 355.2);
