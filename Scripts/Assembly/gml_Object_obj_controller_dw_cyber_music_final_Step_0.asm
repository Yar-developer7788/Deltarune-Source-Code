.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.movingwall1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1247.x
push.v self.movingwall1
pushi.e -9
pop.v.v [stacktop]self.x

:[2]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 82.x
pushi.e 480
cmp.i.v GTE
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 0
pop.v.i self.timer
pushi.e 1246
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1248
conv.i.v
push.v 1247.y
push.v 1247.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.movingwall1
pushi.e 2
push.v self.movingwall1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.movingwall1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.movingwall1
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.state

:[9]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [16]

:[10]
pushi.e 276
pushenv [14]

:[11]
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [13]

:[12]
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
b [14]

:[13]
pushi.e 0
pop.v.i self.image_alpha

:[14]
popenv [11]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [16]

:[15]
pushi.e 2
pop.v.i self.state

:[16]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
push.v 82.x
pushi.e 16
add.i.v
pop.v.v 82.x
push.v 1247.x
pushi.e 16
add.i.v
pop.v.v 1247.x
push.v 1247.x
pushi.e 640
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.timer
pushi.e 268
conv.i.v
pushi.e 200
conv.i.v
pushi.e 648
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bulletarea
pushi.e 7
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 5
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 2.1
pop.v.d self.state

:[19]
push.v self.state
push.d 2.1
cmp.d.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.d 2.11
pop.v.d self.state

:[21]
push.v self.state
push.d 2.11
cmp.d.v EQ
bf [23]

:[22]
pushi.e -999
pop.v.i self.state
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 82
conv.i.v
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.d 2.2
conv.d.v
push.s "state"@6405
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[23]
push.v self.state
push.d 2.2
cmp.d.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.state

:[25]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [34]

:[26]
pushi.e 276
pushenv [28]

:[27]
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pop.v.v self.x
pushbltn.v builtin.room_height
pushi.e 2
mul.i.v
pop.v.v self.y
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 195
pushenv [30]

:[29]
push.v self.auto
pushi.e 1
sub.i.v
pop.v.v self.auto

:[30]
popenv [29]
pushi.e 1
pop.v.b 1229.active
pushi.e 1
pop.v.i 82.cutscene
pushi.e 0
pop.v.i global.interact
push.v 1229.sndinit
pushi.e 2
cmp.i.v EQ
bf [34]

:[31]
push.v self.bulletarea
pushi.e -9
pushenv [33]

:[32]
pushbltn.v builtin.room_width
pop.v.v self.x
pushbltn.v builtin.room_height
pop.v.v self.y

:[33]
popenv [32]
pushi.e 4
pop.v.i self.state
pushi.e 0
pop.v.i self.timer

:[34]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [39]

:[35]
push.v 82.x
pushi.e 16
add.i.v
pop.v.v 82.x
call.i gml_Script_camerax(argc=0)
pushi.e 16
add.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v 1247.x
pushi.e 16
add.i.v
pop.v.v 1247.x
push.v 1247.x
pushi.e 1640
cmp.i.v GTE
bf [39]

:[36]
pushi.e 1640
pop.v.i 1247.x
pushi.e 0
pop.v.i self.timer
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.movingwall1
pushi.e -9
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 1144
conv.i.v
pushi.e 120
conv.i.v
pushi.e 1600
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.endwall
pushi.e 1
push.v self.endwall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 7
push.v self.endwall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 5
pop.v.i self.state

:[39]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [45]

:[40]
pushi.e 1
pop.v.i global.interact
push.v 82.x
pushi.e 1640
cmp.i.v LT
bf [42]

:[41]
pushi.e 1640
pop.v.i 82.x

:[42]
pushi.e 276
pushenv [44]

:[43]
pushi.e 0
pop.v.i self.x

:[44]
popenv [43]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 6
pop.v.i self.state

:[45]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [47]

:[46]
pushi.e -999
pop.v.i self.state
pushi.e 8
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 174
conv.i.v
pushi.e 1710
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 174
conv.i.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "state"@6405
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[47]
push.v self.state
pushi.e 7
cmp.i.v EQ
bf [50]

:[48]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [50]

:[49]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
push.v self.state
push.e 1
add.i.v
pop.v.v self.state

:[50]
push.v self.state
pushi.e 8
cmp.i.v EQ
bf [end]

:[51]
pushi.e 276
pushenv [54]

:[52]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [54]

:[53]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[54]
popenv [52]

:[end]