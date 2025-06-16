.localvar 2 arguments
.localvar 35299 readable_cars 17623

:[0]
push.v self.dismiss
conv.v.b
bf [6]

:[1]
pushi.e 1
pop.v.i global.interact
push.v self.vertical_jam_y
pushi.e 12
add.i.v
pop.v.v self.vertical_jam_y
push.v self.hor_jam_x
pushi.e 12
add.i.v
pop.v.v self.hor_jam_x
push.v self.vertical_jam_y
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 24
add.i.v
add.v.v
cmp.v.v GT
bf [6]

:[2]
pushi.e 0
pop.v.b self.dismiss
pushi.e 1
pop.v.b self.vertical_dismiss
pushi.e 1
pop.v.b self.horizontal_dismiss
pushi.e 1015
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 1015
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.con

:[5]
popenv [4]

:[6]
push.v self.release_hor_jam
conv.v.b
bf [end]

:[7]
push.v self.horizontal_dismiss
conv.v.b
bf [9]

:[8]
push.i 9001250
pop.v.i self.depth
pushi.e 0
pop.v.b self.horizontal_dismiss
pushi.e 3500
pop.v.i self.hor_jam_x

:[9]
push.v self.hor_jam_x
pushi.e 12
add.i.v
pop.v.v self.hor_jam_x
push.v self.hor_jam_x
pushi.e 3850
cmp.i.v GTE
bf [end]

:[10]
pushi.e 133
conv.i.v
pushi.e 255
conv.i.v
pushi.e 4140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars
pushi.e 8
pushloc.v local.readable_cars
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
pop.v.b self.release_hor_jam

:[end]