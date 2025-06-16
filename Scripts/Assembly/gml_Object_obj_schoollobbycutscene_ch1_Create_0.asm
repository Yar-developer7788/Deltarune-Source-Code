.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.ran
pushi.e 0
pop.v.i self.dex
pushi.e 0
pop.v.i self.tsouth
pushi.e 0
pop.v.i self.teast
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.type
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.facing

:[2]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [8]

:[3]
pushi.e 1
pop.v.i global.interact
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 1351
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 3461
conv.i.v
pushi.e 360
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.t
push.v self.t
pushi.e -9
pushenv [7]

:[6]
pushi.e -2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 10000
pop.v.i self.depth

:[7]
popenv [6]
pushi.e 85
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.type

:[8]
pushglb.v global.plot
pushi.e 3
cmp.i.v EQ
bf [18]

:[9]
pushi.e 2
pop.v.i self.type
pushi.e 1351
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible
push.v 1432.x
pop.v.v self.x
push.v 1432.y
pop.v.v self.y

:[11]
popenv [10]
pushi.e 4210
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 3540
conv.i.v
pushi.e 192
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.depth
pushi.e 5
sub.i.v
pop.v.v self.depth

:[15]
popenv [14]
pushi.e 1
pop.v.i global.interact
pushi.e 1418
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 1338
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.doorsolid
push.d 0.1
pop.v.d self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[18]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [23]

:[19]
pushi.e 3472
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [21]

:[20]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[21]
popenv [20]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [23]

:[22]
push.i 231459
setowner.e
push.s "mus_birdnoise.ogg"@14946
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.7
conv.d.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[23]
pushglb.v global.plot
pushi.e 251
cmp.i.v GTE
bf [end]

:[24]
pushi.e 4
pop.v.i self.type

:[end]