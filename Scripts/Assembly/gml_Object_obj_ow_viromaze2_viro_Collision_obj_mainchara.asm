.localvar 2 arguments

:[0]
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushbltn.v builtin.room_width
pop.v.v 268.x
pushbltn.v builtin.room_height
pop.v.v 268.y

:[2]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.engage
pushi.e 55
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.myencounter
push.v self.sprite_index
push.v self.engage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.engage
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.engage
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1799
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.touchsprite
pushi.e 1
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.radius
pushi.e 0
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.moveradius
pushi.e 9
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.pacetype
pushi.e 3
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.chasetype
pushi.e 1
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.alertskip
pushi.e 0
push.v self.engage
pushi.e -9
pop.v.i [stacktop]self.ignoresolid
call.i instance_destroy(argc=0)
popz.v

:[end]