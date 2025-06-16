.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 652
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1977
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 652
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e -40
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.length
pushi.e -2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.myspeed
pushi.e -60
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.place
pushi.e 1977
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
call.i gml_Script_camerax(argc=0)
pushi.e 310
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target_x

:[2]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
pushi.e 652
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 310
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.length
pushi.e 1976
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[4]
push.v self.timer
pushi.e 120
cmp.i.v EQ
bf [end]

:[5]
pushi.e 652
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 235
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.length
pushi.e 3322
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]