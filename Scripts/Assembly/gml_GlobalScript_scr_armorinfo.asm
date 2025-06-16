.localvar 2 arguments

:[0]
b [53]

> gml_Script_scr_armorinfo (locals=0, argc=1)
:[1]
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_2_0"@8884
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
pushi.e 0
pop.v.i self.armorelementtemp
pushi.e 0
pop.v.i self.armorelementamounttemp
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [25]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [26]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [27]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [28]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [31]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [34]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [35]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [36]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [37]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [38]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [39]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [40]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [41]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [42]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [43]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [44]

:[17]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [45]

:[18]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [46]

:[19]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [47]

:[20]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [48]

:[21]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [49]

:[22]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [50]

:[23]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [51]

:[24]
b [52]

:[25]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_7_0"@8885
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_8_0_b"@8886
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_8_0"@8887
conv.s.v
push.s "Hey, hands off!"@8888
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_10_0"@8889
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_11_0"@8890
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_22_0"@8891
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 0
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [52]

:[26]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_28_0"@8892
conv.s.v
push.s "Amber Card"@8893
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_29_0"@8894
conv.s.v
push.s "A thin square charm that sticks#to you, increasing defense."@8895
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_30_0"@8896
conv.s.v
push.s "... better than nothing."@8897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_31_0"@8898
conv.s.v
push.s "It's sticky, huh, Kris..."@8899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_33_0"@8900
conv.s.v
push.s "It's like a name-tag!"@8901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_43_0"@8902
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [52]

:[27]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_49_0"@8903
conv.s.v
push.s "Dice Brace"@8904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_50_0"@8905
conv.s.v
push.s "A bracelet made out of various#symbol-inscribed cubes."@8906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_51_0"@8907
conv.s.v
push.s "... okay."@8908
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_52_0"@8909
conv.s.v
push.s "It says \"Friendship!\""@8910
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_54_0"@8911
conv.s.v
push.s "Hey, y-you jumbled it..."@8912
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_64_0"@8913
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [52]

:[28]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_70_0"@8914
conv.s.v
push.s "Pink Ribbon"@8915
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_71_0"@8916
conv.s.v
push.s "A cute hair ribbon that increases#the range bullets increase tension."@8917
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_72_0"@8918
conv.s.v
push.s "Nope. Not in 1st grade anymore."@8919
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_73_0"@8920
conv.s.v
push.s "Um... D-do I look cute...?"@8921
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_75_0"@8922
conv.s.v
push.s "... feels familiar."@8923
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_78_0"@8924
conv.s.v
push.s "I said NO! C'mon already!"@8925
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_79_0"@8926
conv.s.v
push.s "It's nice dressing up..."@8927
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp

:[30]
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 20
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_91_0"@8928
conv.s.v
push.s "GrazeArea"@8929
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [52]

:[31]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_98_0"@8930
conv.s.v
push.s "White Ribbon"@8931
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_99_0"@8932
conv.s.v
push.s "A crinkly hair ribbon that slightly#increases your defense."@8933
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_100_0"@8934
conv.s.v
push.s "Nope. Not in 1st grade anymore."@8919
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_101_0"@8935
conv.s.v
push.s "Um... D-do I look cute...?"@8921
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_105_0"@8936
conv.s.v
push.s "I said NO! C'mon already!"@8925
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_106_0"@8937
conv.s.v
push.s "It's nice being dressed up..."@8938
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp

:[33]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_108_0"@8939
conv.s.v
push.s "... feels familiar."@8923
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_118_0"@8940
conv.s.v
push.s "Cuteness"@8941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 90
pop.v.i self.value
b [52]

:[34]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_125_0"@8942
conv.s.v
push.s "IronShackle"@8943
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_126_0"@8944
conv.s.v
push.s "Shackle that ironically increases#your attack and defense."@8945
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_127_0"@8946
conv.s.v
push.s "(Damn, it's actually cool...)"@8947
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_128_0"@8948
conv.s.v
push.s "*jingle jangle* Haha!"@8949
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_130_0"@8950
conv.s.v
push.s "I'm the ghost of holidays past!"@8951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 1
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_140_0"@8952
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [52]

:[35]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_146_0"@8953
conv.s.v
push.s "MouseToken"@8954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_147_0"@8955
conv.s.v
push.s "A golden coin with a once-powerful mousewizard engraved on it."@8956
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_148_0"@8957
conv.s.v
push.s "This guy's... familiar?"@8958
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_149_0"@8959
conv.s.v
push.s "Chu! Healing power UP!"@8960
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_151_0"@8961
conv.s.v
push.s "... from the family entertainment center?"@8962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_161_0"@8963
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 120
pop.v.i self.value
pushi.e 7
pop.v.i self.armorelementtemp
push.d 0.5
pop.v.d self.armorelementamounttemp
b [52]

:[36]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_167_0"@8964
conv.s.v
push.s "Jevilstail"@8965
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_168_0"@8966
conv.s.v
push.s "A J-shaped tail that gives you devilenergy."@8967
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_169_0"@8968
conv.s.v
push.s "Figured I'd grow one someday."@8969
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_170_0"@8970
conv.s.v
push.s "I'm a good devil, OK?"@8971
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_172_0"@8972
conv.s.v
push.s "... (I like it...)"@8973
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 2
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_182_0"@8974
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [52]

:[37]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_189_0"@8975
conv.s.v
push.s "Silver Card"@8976
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_190_0"@8977
conv.s.v
push.s "A square charm that increases#dropped money by 5%"@8978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_191_0"@8979
conv.s.v
push.s "Money, that's what I need."@8980
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_192_0"@8981
conv.s.v
push.s "Do they take credit?"@8982
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_193_0"@8983
conv.s.v
push.s "It goes with my watch!"@8984
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_203_0"@8985
conv.s.v
push.s "$ +5%"@8986
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 200
pop.v.i self.value
b [52]

:[38]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_210_0"@8987
conv.s.v
push.s "TwinRibbon"@8988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_211_0"@8989
conv.s.v
push.s "Two ribbons. You'll have to put#your hair into pigtails."@8990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_212_0"@8991
conv.s.v
push.s "... it gets worse and worse."@8992
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_213_0"@8993
conv.s.v
push.s "Try around my horns!"@8994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_214_0"@8995
conv.s.v
push.s "... nostalgic, huh."@8996
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 3
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 20
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_225_0"@8997
conv.s.v
push.s "GrazeArea"@8929
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 400
pop.v.i self.value
b [52]

:[39]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_232_0"@8998
conv.s.v
push.s "GlowWrist"@8999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_233_0"@9000
conv.s.v
push.s "A tough bracelet made of green wires,#and studded with sharp glowing lights."@9001
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_234_0"@9002
conv.s.v
push.s "Whoops, it's tangled."@9003
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_235_0"@9004
conv.s.v
push.s "Let me just untangle this..."@9005
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_236_0"@9006
conv.s.v
push.s "It's like holiday lights..."@9007
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_247_0"@9008
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 200
pop.v.i self.value
b [52]

:[40]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_254_0"@9009
conv.s.v
push.s "ChainMail"@9010
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_255_0"@9011
conv.s.v
push.s "Chain-armor. Send it to 10 others#or it'll lose its defensive rating"@9012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_256_0"@9013
conv.s.v
push.s "Damn, guess I'm cursed."@9014
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_257_0"@9015
conv.s.v
push.s "A letter?... For me...?"@9016
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_258_0"@9017
conv.s.v
push.s "Armor? (It's cool...)"@9018
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 3
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_269_0"@9019
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 300
pop.v.i self.value
b [52]

:[41]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_276_0"@9020
conv.s.v
push.s "B.ShotBowtie"@9021
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_277_0"@9022
conv.s.v
push.s "A handsome bowtie. Looks like the brand#name has been cut off."@9023
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_278_0"@9024
conv.s.v
push.s "Ugh, I look like a nerd."@9025
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_279_0"@9026
conv.s.v
push.s "Can I have suspenders?"@9027
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_280_0"@9028
conv.s.v
push.s "... do I put it in my hair?"@9029
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 1
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_291_0"@9030
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 300
pop.v.i self.value
b [52]

:[42]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_298_0"@9031
conv.s.v
push.s "SpikeBand"@9032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_299_0"@9033
conv.s.v
push.s "A black wristband covered in spikes.#Has the tendency to get stuck to itself."@9034
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_300_0"@9035
conv.s.v
push.s "Can't say no to spikes."@9036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_301_0"@9037
conv.s.v
push.s "Um, do I... look tough?"@9038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_302_0"@9039
conv.s.v
push.s "(Maybe Susie would like this look?)"@9040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 2
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_313_0"@9041
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 300
pop.v.i self.value
b [52]

:[43]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_320_0"@9042
conv.s.v
push.s "Silver Watch"@9043
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_321_0"@9044
conv.s.v
push.s "Grazing bullets affects#the turn length by 10% more"@9045
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_322_0"@9046
conv.s.v
push.s "It's clobbering time."@9047
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_323_0"@9048
conv.s.v
push.s "I'm late, I'm late!"@9049
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_324_0"@9050
conv.s.v
push.s "(Th-this was mine...)"@9051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_342_0_b"@9052
conv.s.v
push.s "GrazeTime"@9053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 1000
pop.v.i self.value
b [52]

:[44]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_342_0"@9054
conv.s.v
push.s "TensionBow"@9055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_343_0"@9056
conv.s.v
push.s "Gain 10% more tension from#grazing bullets"@9057
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage2temp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage3temp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_364_0_b"@9058
conv.s.v
push.s "TPGain"@9059
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 400
pop.v.i self.value
b [52]

:[45]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_364_0"@9060
conv.s.v
push.s "Mannequin"@8238
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_365_0"@9061
conv.s.v
push.s "It's a mannequin with the clothes#permanently attached. Useless"@8337
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_366_0"@9062
conv.s.v
push.s "Not even gonna ask."@9063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_367_0"@9064
conv.s.v
push.s "Um, the d-dress is cute..."@9065
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_368_0"@9066
conv.s.v
push.s "(Why did they spend $300 on this!?)"@9067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 0
pop.v.i self.armorchar3temp
pushi.e 0
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_386_0_b"@9068
conv.s.v
push.s "???"@9069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 4
pop.v.i self.armorabilityicontemp
pushi.e 0
pop.v.i self.armoricontemp
pushi.e 300
pop.v.i self.value
pushi.e 6
pop.v.i self.armorelementtemp
push.d 0.35
pop.v.d self.armorelementamounttemp
b [52]

:[46]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_386_0"@9070
conv.s.v
push.s "DarkGoldBand"@9071
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_387_0"@9072
conv.s.v
push.s "A black metal with a golden shine."@9073
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_388_0"@9074
conv.s.v
push.s "Not even gonna ask."@9063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_389_0"@9075
conv.s.v
push.s "Um, the d-dress is cute..."@9065
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_390_0"@9076
conv.s.v
push.s "(Why did they spend $300 on this!?)"@9067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 0
pop.v.i self.armorchar3temp
pushi.e 0
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_401_0"@9077
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushglb.v global.chapter
pushi.e 200
mul.i.v
pushglb.v global.chapter
pushi.e 1
sub.i.v
pushi.e 220
mul.i.v
add.v.v
pop.v.v self.value
b [52]

:[47]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_408_0"@9078
conv.s.v
push.s "SkyMantle"@9079
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_409_0"@9080
conv.s.v
push.s "A cape that shimmers fluorescently.#Protects against Elec and Holy attacks."@9081
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage2temp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage3temp
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_433_0_b"@9082
conv.s.v
push.s "Elec/Holy"@9083
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 4
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 1
pop.v.i self.value
pushi.e 1
pop.v.i self.armorelementtemp
push.d 0.5
pop.v.d self.armorelementamounttemp
b [52]

:[48]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_430_0"@9084
conv.s.v
push.s "SpikeShackle"@9085
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_431_0"@9086
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_432_0"@9087
conv.s.v
push.s "Get a load of THIS!"@9088
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_433_0"@9089
conv.s.v
push.s "Looking SHARP!"@9090
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_434_0"@9091
conv.s.v
push.s "(It's tearing my sleeves...)"@9092
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 3
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_459_0"@9093
conv.s.v
push.s "Attack"@9094
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 300
pop.v.i self.value
b [52]

:[49]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_452_0"@9095
conv.s.v
push.s "FrayedBowtie"@9096
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_453_0"@9097
conv.s.v
push.s "An old bowtie. It seems to have#lost much of its defensive value."@9098
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_454_0"@9099
conv.s.v
push.s "Look. I have standards."@9100
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_455_0"@9101
conv.s.v
push.s "It's still wearable!"@9102
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_456_0"@9103
conv.s.v
push.s "(Reminds me of Asgore...)"@9104
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 1
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 1
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_467_0"@9105
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
pushi.e 6
pop.v.i self.armorelementtemp
push.d 0.15
pop.v.d self.armorelementamounttemp
b [52]

:[50]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_491_0"@9106
conv.s.v
push.s "Dealmaker"@9107
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_492_0"@9108
conv.s.v
push.s "Fashionable pink and yellow glasses.#Greatly increase $ gained, and...?"@9109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_493_0"@9110
conv.s.v
push.s "Money, that's what I need."@8980
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_494_0"@9111
conv.s.v
push.s "Two pairs of glasses?"@9112
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_495_0"@9113
conv.s.v
push.s "(Seems... familiar?)"@9114
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 5
pop.v.i self.armordftemp
pushi.e 5
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_505_0"@9115
conv.s.v
push.s "$ +30%"@9116
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
pushi.e 6
pop.v.i self.armorelementtemp
push.d 0.4
pop.v.d self.armorelementamounttemp
b [52]

:[51]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_516_0"@9117
conv.s.v
push.s "RoyalPin"@9118
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_517_0"@9119
conv.s.v
push.s "A brooch engraved with Queen's face.#Careful of the sharp part."@9120
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_518_0"@9121
conv.s.v
push.s "ROACH? Oh, brooch. Heh."@9122
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_519_0"@9123
conv.s.v
push.s "I'm a cute little corkboard!"@9124
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_520_0"@9125
conv.s.v
push.s "Queen... gave this to me."@9126
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.amessage4temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 3
pop.v.i self.armordftemp
pushi.e 1
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
pushi.e 1
pop.v.i self.armorchar4temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_291_0"@9030
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 1000
pop.v.i self.value
b [52]

:[52]
popz.v
exit.i

:[53]
push.i [function]gml_Script_scr_armorinfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo
popz.v

:[end]