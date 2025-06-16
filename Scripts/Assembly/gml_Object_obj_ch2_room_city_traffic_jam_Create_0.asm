.localvar 2 arguments
.localvar 35299 readable_cars 17621

:[0]
pushi.e 0
pop.v.b self.dismiss
pushi.e 0
pop.v.b self.vertical_dismiss
pushi.e 0
pop.v.b self.horizontal_dismiss
pushi.e 0
pop.v.i self.animsiner
push.v self.x
pop.v.v self.vertical_jam_x
push.v self.y
pop.v.v self.vertical_jam_y
pushi.e 3090
pop.v.i self.hor_jam_x
pushi.e 180
pop.v.i self.hor_jam_y
pushi.e 0
pop.v.b self.release_hor_jam
pushi.e 4000
pop.v.i self.release_hor_x
pushi.e 12
pop.v.i self.release_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.b self.vertical_dismiss
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
b [end]

:[2]
pushi.e 133
conv.i.v
pushi.e 300
conv.i.v
pushi.e 3160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars
pushi.e 10
pushloc.v local.readable_cars
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[end]