.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 120
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnon
pushi.e 1
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 400
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_16_0_b"@37856
conv.s.v
push.s "* Now I Know You Are All Loving My Mansion/"@37857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_17_0"@37858
conv.s.v
push.s "* But We Have A Few Rules Around Here You Have To Follow/"@37859
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_18_0"@37860
conv.s.v
push.s "* One Wipe Your Shoes/"@37861
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_19_0"@37862
conv.s.v
push.s "* Two Have Fun/"@37863
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_20_0"@37864
conv.s.v
push.s "* Three Respect The Pottery/"@37865
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_21_0"@37866
conv.s.v
push.s "* Four Have Fun/"@37867
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_22_0"@37868
conv.s.v
push.s "* Five List Entry Duplication Error/%"@37869
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 0
pop.v.i self.timer

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [18]

:[17]
push.v self.queen_monitor
pushi.e -9
push.v [stacktop]self.turnoff
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnoff
pushi.e 0
pop.v.i global.interact

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1257
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [30]

:[25]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 400
pop.v.v [array]self.flag
pushi.e 164
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e -146
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enemy1
push.v self.enemy1
pushi.e -9
pushenv [27]

:[26]
pushi.e 64
pop.v.i self.myencounter
pushi.e 1254
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.facing
pushi.e 7
pop.v.i self.chasetype

:[27]
popenv [26]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enemy2
push.v self.enemy2
pushi.e -9
pushenv [29]

:[28]
pushi.e 64
pop.v.i self.myencounter
pushi.e 1254
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.alertskip
pushi.e 7
pop.v.i self.chasetype

:[29]
popenv [28]
pushi.e 4
pop.v.i self.con

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [36]

:[31]
push.v self.enemy1
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bt [33]

:[32]
push.v self.enemy2
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 5
pop.v.i self.con

:[36]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[end]