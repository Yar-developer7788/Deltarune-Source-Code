.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 414
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 12
add.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.infecttarget
push.v self.infecttarget
pushi.e -4
cmp.i.v NEQ
bf [end]

:[1]
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1805
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
push.v self.infecttarget
pushi.e -9
pop.v.i [stacktop]self.speed

:[end]