.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[1]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[2]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[3]
pushi.e 1293
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[4]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[5]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [7]

:[6]
push.v 1169.jumpy
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
b [10]

:[9]
push.e 1

:[10]
bf [57]

:[11]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [56]

:[12]
pushi.e 1189
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.v 1189.micescore
pushi.e 1
add.i.v
pop.v.v 1189.micescore

:[14]
push.v 1189.language
pushi.e 0
cmp.i.v EQ
bf [35]

:[15]
push.v 1189.micescore
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 76
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[17]
push.v 1189.micescore
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 79
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[19]
push.v 1189.micescore
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 333
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[21]
push.v 1189.micescore
pushi.e 4
cmp.i.v EQ
bf [23]

:[22]
pushi.e 14
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[23]
push.v 1189.micescore
pushi.e 5
cmp.i.v EQ
bf [25]

:[24]
pushi.e 72
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[25]
push.v 1189.micescore
pushi.e 6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 80
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[27]
push.v 1189.micescore
pushi.e 7
cmp.i.v EQ
bf [29]

:[28]
pushi.e 333
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[29]
push.v 1189.micescore
pushi.e 8
cmp.i.v EQ
bf [31]

:[30]
pushi.e 85
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[31]
push.v 1189.micescore
pushi.e 9
cmp.i.v EQ
bf [33]

:[32]
pushi.e 84
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[33]
push.v 1189.micescore
pushi.e 10
cmp.i.v EQ
bf [35]

:[34]
pushi.e 72
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[35]
push.v 1189.language
pushi.e 1
cmp.i.v EQ
bf [56]

:[36]
push.v 1189.micescore
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 76
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[38]
push.v 1189.micescore
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 79
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[40]
push.v 1189.micescore
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 85
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[42]
push.v 1189.micescore
pushi.e 4
cmp.i.v EQ
bf [44]

:[43]
pushi.e 14
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[44]
push.v 1189.micescore
pushi.e 5
cmp.i.v EQ
bf [46]

:[45]
pushi.e 81
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
push.v 1189.micescore
pushi.e 6
cmp.i.v EQ
bf [48]

:[47]
pushi.e 72
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[48]
push.v 1189.micescore
pushi.e 7
cmp.i.v EQ
bf [50]

:[49]
pushi.e 336
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[50]
push.v 1189.micescore
pushi.e 8
cmp.i.v EQ
bf [52]

:[51]
pushi.e 85
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[52]
push.v 1189.micescore
pushi.e 9
cmp.i.v EQ
bf [54]

:[53]
pushi.e 80
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[54]
push.v 1189.micescore
pushi.e 10
cmp.i.v EQ
bf [56]

:[55]
pushi.e 76
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[56]
pushi.e 1
pop.v.i self.toggle

:[57]
push.v self.toggle
pop.v.v self.image_index

:[end]