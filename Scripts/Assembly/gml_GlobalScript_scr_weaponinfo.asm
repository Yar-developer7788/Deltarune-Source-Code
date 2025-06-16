.localvar 2 arguments

:[0]
b [54]

> gml_Script_scr_weaponinfo (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.weaponchar4temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_2_0"@8632
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
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
bt [32]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [33]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [34]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [35]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [36]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [37]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [38]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [39]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [40]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [41]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [42]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [43]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [44]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [45]

:[17]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [46]

:[18]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [47]

:[19]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [48]

:[20]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [49]

:[21]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [50]

:[22]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [51]

:[23]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [52]

:[24]
b [53]

:[25]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_11_0"@8633
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_12_0"@8634
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_13_0"@8635
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_14_0"@8636
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_15_0"@8637
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 0
pop.v.i self.weaponboltstemp
push.s " "@353
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.value
b [53]

:[26]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_33_0"@8638
conv.s.v
push.s "Wood Blade"@8639
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_34_0"@8640
conv.s.v
push.s "A wooden practice blade with a carbon-#reinforced core."@8641
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_35_0"@8642
conv.s.v
push.s "What's this!? A CHOPSTICK?"@8643
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
pushglb.v global.plot
pushi.e 30
cmp.i.v LT
bf [28]

:[27]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_39_0"@8644
conv.s.v
push.s "... You have a SWORD!?"@8645
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2tempt

:[31]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_40_0"@8647
conv.s.v
push.s "That's yours, Kris..."@8648
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_42_0"@8649
conv.s.v
push.s "(It has bite marks...)"@8650
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 60
pop.v.i self.value
b [53]

:[32]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_59_0"@8651
conv.s.v
push.s "Mane Ax"@8652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_60_0"@8653
conv.s.v
push.s "Beginner's ax forged from the#mane of a dragon whelp."@8654
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_61_0"@8655
conv.s.v
push.s "I'm too GOOD for that."@8656
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_62_0"@8657
conv.s.v
push.s "Ummm... it's a bit big."@8658
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_64_0"@8659
conv.s.v
push.s "It... smells nice..."@8660
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 80
pop.v.i self.value
b [53]

:[33]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_81_0"@8661
conv.s.v
push.s "Red Scarf"@8662
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_82_0"@8663
conv.s.v
push.s "A basic scarf made of lightly#magical fiber."@8664
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_83_0"@8665
conv.s.v
push.s "No. Just... no."@8666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_84_0"@8667
conv.s.v
push.s "Comfy! Touch it, Kris!"@8668
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_86_0"@8669
conv.s.v
push.s "Huh? No, I'm not cold."@8670
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 100
pop.v.i self.value
b [53]

:[34]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_105_0"@8671
conv.s.v
push.s "EverybodyWeapon"@8672
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_106_0"@8673
conv.s.v
push.s "It felt right for everyone."@8674
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_107_0"@8675
conv.s.v
push.s "Uhhh... Ok."@8676
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_108_0"@8677
conv.s.v
push.s "A perfect fit!"@8678
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_109_0"@8679
conv.s.v
push.s "Wh... what is this?"@8680
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 12
pop.v.i self.weaponattemp
pushi.e 6
pop.v.i self.weapondftemp
pushi.e 8
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponchar4temp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [53]

:[35]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_127_0"@8681
conv.s.v
push.s "Spookysword"@8682
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_128_0"@8683
conv.s.v
push.s "A black-and-orange sword with a bat hilt."@8684
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_129_0"@8685
conv.s.v
push.s "Ugh, it's too small!"@8686
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_130_0"@8687
conv.s.v
push.s "Oh, it's too scary!"@8688
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_132_0"@8689
conv.s.v
push.s "(It's kinda cool...)"@8690
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_145_0"@8691
conv.s.v
push.s "Spookiness UP"@8692
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [53]

:[36]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_149_0"@8693
conv.s.v
push.s "Brave Ax"@8694
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_150_0"@8695
conv.s.v
push.s "A glossy ax from a block warrior.#Suitable for heroes."@8696
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_151_0"@8697
conv.s.v
push.s "Well, if I have to."@8698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_152_0"@8699
conv.s.v
push.s "It's a bit too heavy..."@8700
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_154_0"@8701
conv.s.v
push.s "(W-wow, what presence...)"@8702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_167_0"@8703
conv.s.v
push.s "Guts Up"@8704
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [53]

:[37]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_171_0"@8705
conv.s.v
push.s "Devilsknife"@8706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_172_0"@8707
conv.s.v
push.s "Skull-emblazoned scythe-ax.#Reduces Rudebuster's cost by 10"@8708
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_173_0"@8709
conv.s.v
push.s "Let the games begin!"@8710
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_174_0"@8711
conv.s.v
push.s "It's too, um, evil."@8712
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_176_0"@8713
conv.s.v
push.s "...? It smiled at me?"@8714
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 5
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 4
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 6
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_189_0"@8715
conv.s.v
push.s "Buster TP DOWN"@8716
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 0
pop.v.i self.value
b [53]

:[38]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_194_0"@8717
conv.s.v
push.s "Trefoil"@8718
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_195_0"@8719
conv.s.v
push.s "Mossy rapier with a clover emblem.#Increases $ found by 5%."@8720
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_196_0"@8721
conv.s.v
push.s "That tacky thing? No!"@8722
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_197_0"@8723
conv.s.v
push.s "Not my shade of green..."@8724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_198_0"@8725
conv.s.v
push.s "Okay! ...? What do you mean, unused!?"@8726
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_211_0"@8727
conv.s.v
push.s "Money Earned UP"@8728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[39]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_215_0"@8729
conv.s.v
push.s "Ragger"@8730
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_216_0"@8731
conv.s.v
push.s "A rugged scarf that cuts enemies like a dagger."@8732
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_217_0"@8733
conv.s.v
push.s "Ow! That can't be comfy!"@8734
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_218_0"@8735
conv.s.v
push.s "Feels prickly... Nice!"@8736
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_220_0"@8737
conv.s.v
push.s "Ouch! ... kind of nice"@8738
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [53]

:[40]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_237_0"@8739
conv.s.v
push.s "DaintyScarf"@8740
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_238_0"@8741
conv.s.v
push.s "Delicate scarf that increases healing#power but has no attack."@8742
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_239_0"@8743
conv.s.v
push.s "IT'S MADE OF DOILIES!"@8744
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_240_0"@8745
conv.s.v
push.s "I'll protect everyone!"@8746
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_242_0"@8747
conv.s.v
push.s "S-stop covering me with it!"@8748
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 2
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_255_0"@8749
conv.s.v
push.s "Fluffiness UP"@8750
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [53]

:[41]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_260_0"@8751
conv.s.v
push.s "TwistedSwd"@8752
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_261_0"@8753
conv.s.v
push.s "A strange blade"@8754
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_262_0"@8755
conv.s.v
push.s "... uhh, looks bad."@8756
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_263_0"@8757
conv.s.v
push.s "It's like a spiral."@8758
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_264_0"@8759
conv.s.v
push.s "It's... kind of scary..."@8760
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 16
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 6
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_277_0"@8761
conv.s.v
push.s "Trance"@8762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 1
pop.v.i self.value
b [53]

:[42]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_282_0"@8763
conv.s.v
push.s "SnowRing"@8764
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_283_0"@8765
conv.s.v
push.s "A ring with the emblem of the#snowflake"@8766
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_284_0"@8767
conv.s.v
push.s "Smells like Noelle"@8768
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_285_0"@8769
conv.s.v
push.s "Are you... proposing?"@8770
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_286_0"@8771
conv.s.v
push.s "(Thank goodness...)"@8772
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponchar4temp
pushi.e 14
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 100
pop.v.i self.value
b [53]

:[43]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_305_0"@8773
conv.s.v
push.s "ThornRing"@8774
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_306_0"@8775
conv.s.v
push.s "Wearer takes damage from pain#Reduces the TP cost of ice spells"@8776
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_307_0"@8777
conv.s.v
push.s "A torture device?"@8778
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_308_0"@8779
conv.s.v
push.s "..."@2873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_309_0"@8780
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 14
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 12
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponchar4temp
pushi.e 14
pop.v.i self.weaponicontemp
pushi.e 14
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_323_0"@8781
conv.s.v
push.s "Trance"@8762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 0
pop.v.i self.value
b [53]

:[44]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_328_0"@8782
conv.s.v
push.s "BounceBlade"@8783
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_329_0"@8784
conv.s.v
push.s "A pink saber with a rubber blade.#Weak, but increases defence."@8785
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_330_0"@8786
conv.s.v
push.s "What is this, rubber?"@8787
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_331_0"@8788
conv.s.v
push.s "Soft and squishy!"@8789
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_332_0"@8790
conv.s.v
push.s "S-stop thwacking me!"@8791
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 1
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_346_0"@8792
conv.s.v
push.s "Defense"@8793
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[45]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_351_0"@8794
conv.s.v
push.s "CheerScarf"@8795
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_352_0"@8796
conv.s.v
push.s "A scarf with colorful you-can-do-it#imagery. Gains more TP from criticals."@8797
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_353_0"@8798
conv.s.v
push.s "Smiley faces? Ecch."@8799
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_354_0"@8800
conv.s.v
push.s "You can do it!"@8801
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_355_0"@8802
conv.s.v
push.s "Now THIS is a tacky scarf! Faha!"@8803
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 1
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 2
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 10
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_369_0"@8804
conv.s.v
push.s "Smiley"@8805
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[46]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_374_0"@8806
conv.s.v
push.s "MechaSaber"@8807
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_375_0"@8808
conv.s.v
push.s "The blade extends when you press the hilt.#CHA-CHK!"@8809
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_376_0"@8810
conv.s.v
push.s "*chk chk chk chk* Nah."@8811
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_377_0"@8812
conv.s.v
push.s "You'd look cool holding it, Kris!"@8813
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_378_0"@8814
conv.s.v
push.s "*chk* A-AHH! Scared myself..."@8815
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 13
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_392_0"@8816
conv.s.v
push.s "Annoying"@8817
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[47]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_397_0"@8818
conv.s.v
push.s "AutoAxe"@8819
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_398_0"@8820
conv.s.v
push.s "Make sure to charge it by#plugging it into the wall."@8821
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_399_0"@8822
conv.s.v
push.s "*chainsaw noises* Hahaha!!"@8823
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_400_0"@8824
conv.s.v
push.s "(Is this a good idea?)"@8825
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_401_0"@8826
conv.s.v
push.s "*zrrt* A-AHH! Scared myself..."@8827
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 13
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_415_0"@8828
conv.s.v
push.s "BadIdea"@8829
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[48]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_420_0"@8830
conv.s.v
push.s "FiberScarf"@8831
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_421_0"@8832
conv.s.v
push.s "A scarf made of soft microfiber.#Balances attack and magic."@8833
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_422_0"@8834
conv.s.v
push.s "(Soft...)"@8835
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_423_0"@8836
conv.s.v
push.s "Oh! My fur's staticy!"@8837
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_424_0"@8838
conv.s.v
push.s "Sure, I'll... huh? It's a weapon?"@8839
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 2
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[49]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_443_0"@8840
conv.s.v
push.s "Ragger2"@8841
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_444_0"@8842
conv.s.v
push.s "A sharp and scratchy scarf.#Worse healing, better attack."@8843
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_445_0"@8844
conv.s.v
push.s "This is Ralsei's deal."@8845
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_446_0"@8846
conv.s.v
push.s "I'm a prickly prince!"@8847
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_447_0"@8848
conv.s.v
push.s "(It's like Santa's beard?)"@8849
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 5
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e -1
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_461_0"@8850
conv.s.v
push.s "Prickly"@8851
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [53]

:[50]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_467_0"@8852
conv.s.v
push.s "BrokenSwd"@8853
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_468_0"@8854
conv.s.v
push.s "A rejected sword cut into 2 pieces.#Not even you can equip this..."@8855
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_469_0"@8856
conv.s.v
push.s "... this is trash."@8857
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_470_0"@8858
conv.s.v
push.s "Should we fix this...?"@8859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_471_0"@8860
conv.s.v
push.s "(Wh... why give this to me?)"@8861
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 6
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_485_0"@8862
conv.s.v
push.s "Failure"@8863
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponabilitytemp
pushi.e 2
pop.v.i self.value
b [53]

:[51]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_490_0"@8864
conv.s.v
push.s "PuppetScarf"@8865
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_491_0"@8866
conv.s.v
push.s "A scarf made of strange strings.#For those that abandon healing."@8867
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_492_0"@8868
conv.s.v
push.s "No way, that's creepy."@8869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_493_0"@8870
conv.s.v
push.s "If I have to fight..."@8871
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_494_0"@8872
conv.s.v
push.s "(Feels like guitar strings...)"@8873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 10
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e -6
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponchar4temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 0
pop.v.i self.value
b [53]

:[52]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_513_0"@8874
conv.s.v
push.s "FreezeRing"@8875
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_514_0"@8876
conv.s.v
push.s "A ring with a snowglobe on it.#... is that someone inside?"@8877
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_515_0"@8878
conv.s.v
push.s "Heh, you steal this? Heh."@8879
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_516_0"@8880
conv.s.v
push.s "It's beautiful..."@8881
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage3temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_517_0"@8882
conv.s.v
push.s "..."@2873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.wmessage4temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 4
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponchar4temp
pushi.e 14
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 1000
pop.v.i self.value
b [53]

:[53]
popz.v
exit.i

:[54]
push.i [function]gml_Script_scr_weaponinfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaponinfo
popz.v

:[end]