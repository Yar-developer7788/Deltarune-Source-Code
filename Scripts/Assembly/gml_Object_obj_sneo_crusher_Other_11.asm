.localvar 2 arguments

:[0]
pushi.e 369
conv.i.v
push.v self.y
pushi.e 17
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2535
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 45
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 3.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 0
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[end]