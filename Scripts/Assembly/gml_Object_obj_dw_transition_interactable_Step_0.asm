.localvar 2 arguments

:[0]
push.v self.talking
pushi.e 2
cmp.i.v EQ
bf [3]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.talking
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.facing

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[4]
pushi.e 82
pushenv [8]

:[5]
pushi.e 1
pop.v.i self.cutscene
pushi.e 300
pop.v.i self.idealx
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 285
pop.v.i self.idealx

:[7]
pushi.e 6
conv.i.v
pushi.e 100
conv.i.v
push.v self.idealx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[8]
popenv [5]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[9]
pushi.e 980
conv.i.v
push.v 276.y
push.v 276.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.su_actor
push.v self.su_actor
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
conv.i.v
pushi.e 86
conv.i.v
pushi.e 313
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[11]
popenv [10]
pushi.e 276
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i gml_Script_scr_pan_lerp(argc=3)
popz.v
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[16]
pushi.e 82
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.visible

:[18]
popenv [17]
pushi.e 944
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [22]

:[19]
push.v self.su_actor
pushi.e -9
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]

:[22]
pushi.e 944
pushenv [25]

:[23]
pushi.e 1
pop.v.i self.quick_mode
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [25]

:[24]
push.v 82.x
pop.v.v self.kris_x
push.v 82.y
pop.v.v self.kris_y
pushi.e 1
pop.v.i self.kris_only

:[25]
popenv [23]
pushi.e 4
pop.v.i self.con

:[end]