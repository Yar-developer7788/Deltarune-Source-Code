.localvar 2 arguments

:[0]
push.v self.attachedobj
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 38
sub.i.v
push.v self.x
pushi.e 32
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attachedinstance
push.v self.balloonid
push.v self.attachedinstance
pushi.e -9
pop.v.v [stacktop]self.balloonid
pushi.e 1
pop.v.i self.attached
push.v self.attachedinstance
pushi.e -9
pushenv [2]

:[1]
pushi.e -10
conv.i.v
push.v other.id
call.i gml_Script_scr_stickto(argc=2)
popz.v

:[2]
popenv [1]

:[end]