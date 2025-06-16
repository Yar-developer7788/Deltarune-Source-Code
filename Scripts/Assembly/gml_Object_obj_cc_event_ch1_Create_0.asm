.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
pushi.e 240
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 1660
conv.i.v
pushi.e 160
conv.i.v
pushi.e 1040
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.elevatorblocker
push.v self.elevatorblocker
pushi.e -9
pushenv [4]

:[3]
pushi.e 6
pop.v.i self.image_xscale

:[4]
popenv [3]

:[5]
pushbltn.v builtin.room
pushi.e 397
cmp.i.v EQ
bf [17]

:[6]
push.i 175179
setowner.e
pushi.e 3612
conv.i.v
pushi.e 280
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spike
pushi.e 3612
conv.i.v
pushi.e 280
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spike
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
pushenv [8]

:[7]
push.i 900000
pop.v.i self.depth

:[8]
popenv [7]
pushi.e -1
pushi.e 1
push.v [array]self.spike
pushi.e -9
pushenv [10]

:[9]
push.i 900000
pop.v.i self.depth

:[10]
popenv [9]
pushi.e -5
pushi.e 217
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[11]
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.image_index

:[13]
popenv [12]
pushi.e -1
pushi.e 1
push.v [array]self.spike
pushi.e -9
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.image_index

:[15]
popenv [14]
b [17]

:[16]
pushi.e 1660
conv.i.v
pushi.e 280
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.darksolid
pushi.e 2
push.v self.darksolid
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[17]
pushbltn.v builtin.room
pushi.e 401
cmp.i.v EQ
bf [33]

:[18]
pushi.e 3612
conv.i.v
pushi.e 920
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spike
pushi.e 3612
conv.i.v
pushi.e 920
conv.i.v
pushi.e 720
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spike
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
pushenv [20]

:[19]
push.i 900000
pop.v.i self.depth

:[20]
popenv [19]
pushi.e -1
pushi.e 1
push.v [array]self.spike
pushi.e -9
pushenv [22]

:[21]
push.i 900000
pop.v.i self.depth

:[22]
popenv [21]
pushi.e -5
pushi.e 218
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[23]
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.image_index

:[25]
popenv [24]
pushi.e -1
pushi.e 1
push.v [array]self.spike
pushi.e -9
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.image_index

:[27]
popenv [26]
b [29]

:[28]
pushi.e 1660
conv.i.v
pushi.e 920
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.darksolid
pushi.e 2
push.v self.darksolid
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[29]
pushi.e -5
pushi.e 245
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [33]

:[30]
pushi.e 1471
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.bluh
pushi.e 1
pop.v.i self.image_index

:[32]
popenv [31]
pushi.e 1414
conv.i.v
pushi.e 980
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.chest

:[33]
pushbltn.v builtin.room
pushi.e 404
cmp.i.v EQ
bf [35]

:[34]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 240
pop.v.v [array]self.flag

:[35]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [37]

:[36]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v GTE
b [38]

:[37]
push.e 0

:[38]
bf [43]

:[39]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [41]

:[40]
push.i 231459
setowner.e
push.s "april_2012.ogg"@38411
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
b [42]

:[41]
push.i 231459
setowner.e
push.s "card_castle.ogg"@38412
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[42]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[43]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [45]

:[44]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bf [end]

:[47]
push.s "basement.ogg"@38413
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]