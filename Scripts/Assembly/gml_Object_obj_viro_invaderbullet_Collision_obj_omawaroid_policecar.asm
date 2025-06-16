.localvar 2 arguments

:[0]
pushi.e 417
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.v other.speed
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
call.i @@Other@@(argc=0)
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]