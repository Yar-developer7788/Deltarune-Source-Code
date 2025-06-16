.localvar 2 arguments

:[0]
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2071
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.depth
pushi.e 5
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i 729.wheel_difficulty

:[end]