.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[end]