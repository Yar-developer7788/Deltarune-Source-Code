.localvar 2 arguments
.localvar 8160 crystal_amount 1459

:[0]
b [78]

> gml_Script_scr_keyiteminfo (locals=1, argc=1)
:[1]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_2_0"@8073
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_3_0"@8075
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
pushi.e 0
pop.v.i self.tempkeyitemusable
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [18]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [19]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [20]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [21]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [22]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [23]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [24]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [25]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [64]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [67]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [68]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [69]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [70]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [75]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [76]

:[17]
b [77]

:[18]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_9_0"@8076
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_10_0"@8077
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[19]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0"@8078
conv.s.v
push.s "It can be used to make calls."@8079
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0"@8080
conv.s.v
push.s "Cell Phone"@8081
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [77]

:[20]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0"@8082
conv.s.v
push.s "Not too important, not too unimportant."@8083
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0"@8084
conv.s.v
push.s "Egg"@698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [77]

:[21]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0"@8085
conv.s.v
push.s "Though broken, it seethes with power.#A master smith could fix it."@8086
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0"@8087
conv.s.v
push.s "BrokenCake"@8088
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[22]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0"@8089
conv.s.v
push.s "It's the top part of a key.#A smith could fix all three parts."@8090
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0"@8091
conv.s.v
push.s "Broken Key A"@8092
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[23]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0"@8093
conv.s.v
push.s "The key to a mysterious cell.#Something feels strange about it."@8094
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0"@8095
conv.s.v
push.s "Door Key"@8096
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[24]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0"@8097
conv.s.v
push.s "It's the middle part of a key.#A smith could fix all three parts."@8098
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0"@8099
conv.s.v
push.s "Broken Key B"@8100
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[25]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0"@8101
conv.s.v
push.s "It's the bottom part of a key.#A smith could fix all three parts."@8102
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0"@8103
conv.s.v
push.s "Broken Key C"@8104
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[26]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_43_0"@8105
conv.s.v
push.s "Hohoho! I'm a tough boy!#Treat me like one of your ITEMS!"@8106
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
pushglb.v global.plot
pushi.e 20
cmp.i.v GTE
bf [28]

:[27]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_46_0"@8107
conv.s.v
push.s "Hohoho! ROUXLS jumped out of your#pocket! How dadcrobatic! (Lesser)"@8108
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[28]
pushglb.v global.plot
pushi.e 55
cmp.i.v GTE
bf [30]

:[29]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_50_0"@8109
conv.s.v
push.s "Hohoho! That game looked fun!#Let me be the stool next!"@8110
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[30]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [32]

:[31]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_54_0"@8111
conv.s.v
push.s "Sounded like milk out there. Splat!#Were you three osmosing without me!?"@8112
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[32]
pushglb.v global.plot
pushi.e 65
cmp.i.v GTE
bf [34]

:[33]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_58_0"@8113
conv.s.v
push.s "We fell! But don't worry. I'm a strong boy.#I won't be trounced by a mere bounce!"@8114
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[34]
pushglb.v global.plot
pushi.e 66
cmp.i.v GTE
bf [36]

:[35]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_62_0"@8115
conv.s.v
push.s "Split up? We'll solve this mystery fast!#You? You can be the un-talking dog."@8116
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[36]
pushglb.v global.plot
pushi.e 70
cmp.i.v GTE
bf [38]

:[37]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_66_0"@8117
conv.s.v
push.s "Ho-ho! A soft cream is following you!#Can we make them a bad guy?"@8118
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[38]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [41]

:[39]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0_b"@8119
conv.s.v
push.s "That golden statue... Could it be...#The illusory nipple technique!?"@8120
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
pushi.e -5
pushi.e 418
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_74_0"@8121
conv.s.v
push.s "Wow! Thanks for the free sample!#I couldn't eat another bite!!"@8122
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[41]
pushglb.v global.plot
pushi.e 79
cmp.i.v GTE
bf [43]

:[42]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_79_0"@8123
conv.s.v
push.s "The bluebird of crappiness.#Fly high, bluebird. Fly high."@8124
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[43]
pushglb.v global.plot
pushi.e 85
cmp.i.v GTE
bf [45]

:[44]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_83_0"@8125
conv.s.v
push.s "Did I miss something? I was doing my#calisthetics. Stay handsome."@8126
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[45]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [47]

:[46]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_87_0"@8127
conv.s.v
push.s "Hey! Thanks for the tape! I was hungry!#Push my tummy to hear a cool song!"@8128
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[47]
pushglb.v global.plot
pushi.e 99
cmp.i.v GTE
bf [49]

:[48]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_91_0"@8129
conv.s.v
push.s "Hoho! It's me, Lancer! Release me and#I will release you!"@8130
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[49]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 1
cmp.i.v GTE
bf [51]

:[50]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v GTE
b [52]

:[51]
push.e 0

:[52]
bf [55]

:[53]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_95_0"@8131
conv.s.v
push.s "(Innocent boys are fast asleep.)"@8132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [55]

:[54]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_99_0"@8133
conv.s.v
push.s "A stone statue.#Strangely, it looks like Lancer..."@8134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[55]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [63]

:[56]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_105_0"@8135
conv.s.v
push.s "Hoho! What a terrific boy's adventure.#Time to kick off my feet and relax..."@8136
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
pushbltn.v builtin.room
pushi.e 74
cmp.i.v EQ
bf [58]

:[57]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_109_0"@8137
conv.s.v
push.s "Oo la la! Who is that handsome#mustachioed boy! I think I'm in love!"@8138
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[58]
pushbltn.v builtin.room
pushi.e 269
cmp.i.v EQ
bt [60]

:[59]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [63]

:[62]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_114_0"@8139
conv.s.v
push.s "(huff, puff) There, I got back into your#pocket! Now you can use my power!"@8140
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[63]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_48_0"@8141
conv.s.v
push.s "Lancer"@7133
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [77]

:[64]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_52_0"@8142
conv.s.v
push.s "Thou gazeth upon a man most handsometh.#This daringst genius, adoredeth beyondth all hey let me speakst"@8143
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_53_0"@8144
conv.s.v
push.s "Rouxls Kaard"@8145
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [66]

:[65]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_126_0"@8146
conv.s.v
push.s "Oh, milord! Tis I, your humblest servante,#righte here where I never lefteth!"@8147
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc

:[66]
b [77]

:[67]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_56_0"@8148
conv.s.v
push.s "A data disk from a strange machine.#Didn't someone want this?"@8149
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_57_0"@8150
conv.s.v
push.s "EmptyDisk"@8151
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[68]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_60_0"@8152
conv.s.v
push.s "A strange disk. You can feel it#smiling in your hand."@8153
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_61_0"@8154
conv.s.v
push.s "LoadedDisk"@8155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[69]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_64_0"@8156
conv.s.v
push.s "A shady-looking program that can#open certain doors."@8157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_65_0"@8158
conv.s.v
push.s "KeyGen"@8159
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[70]
pushi.e 0
pop.v.i local.crystal_amount
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [72]

:[71]
push.v local.crystal_amount
push.e 1
add.i.v
pop.v.v local.crystal_amount

:[72]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v GTE
bf [74]

:[73]
push.v local.crystal_amount
push.e 1
add.i.v
pop.v.v local.crystal_amount

:[74]
pushi.e 1
pop.v.i self.tempkeyitemusable
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0"@8161
conv.s.v
pushloc.v local.crystal_amount
push.s "A sharp shadow moves like water in the hand.#You have collected [~1]."@8162
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_71_0"@8163
conv.s.v
push.s "ShadowCrystal"@8164
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
b [77]

:[75]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_123_0"@8165
conv.s.v
push.s "Starwalker"@8166
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_124_0"@8167
conv.s.v
push.s "The original                     #         (Starwalker)"@8168
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
b [77]

:[76]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_132_0"@8169
conv.s.v
push.s "PureCrystal"@8170
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemname
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_133_0"@8171
conv.s.v
push.s "The shadow purified by the cat"@8172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.tempkeyitemdesc
b [77]

:[77]
popz.v
exit.i

:[78]
push.i [function]gml_Script_scr_keyiteminfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_keyiteminfo
popz.v

:[end]