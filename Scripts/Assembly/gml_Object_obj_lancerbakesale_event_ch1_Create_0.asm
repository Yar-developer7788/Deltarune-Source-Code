.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 1412
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.npc
pushglb.v global.plot
pushi.e 80
cmp.i.v GTE
bt [2]

:[1]
pushi.e -5
pushi.e 238
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 99
pop.v.i self.con
b [end]

:[5]
pushi.e 3553
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 3578
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l
push.v self.l
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[9]
popenv [8]

:[end]