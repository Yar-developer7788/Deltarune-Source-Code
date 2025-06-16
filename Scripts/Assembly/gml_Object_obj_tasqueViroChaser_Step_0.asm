.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1244
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 1244.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[7]
pushi.e 1244
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 12
conv.i.v
push.v 1244.y
push.v 1244.sprite_height
add.v.v
push.v 1244.x
push.v 1244.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i move_towards_point(argc=3)
popz.v
b [10]

:[9]
pushi.e 12
conv.i.v
pushi.e -128
conv.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i move_towards_point(argc=3)
popz.v

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]