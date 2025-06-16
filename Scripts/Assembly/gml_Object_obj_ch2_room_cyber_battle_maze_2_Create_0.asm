.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.southcon
pushi.e 0
pop.v.i self.northcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 133
conv.i.v
pushi.e 100
conv.i.v
pushi.e 740
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hacker
pushi.e 1
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1230
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 68
conv.i.v
pushi.e 115
conv.i.v
pushi.e 1230
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.northcollider
pushi.e 4
push.v self.northcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.northcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 68
conv.i.v
pushi.e 927
conv.i.v
pushi.e 157
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.southcollider
pushi.e 4
push.v self.southcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.southcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]