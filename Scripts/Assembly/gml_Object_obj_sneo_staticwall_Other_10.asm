.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [11]

:[4]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
push.v self.hitshot
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.image_xscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [10]

:[9]
pushi.e 1972
pop.v.i self.sprite_index

:[10]
popenv [9]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[11]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
push.v self.hitshot
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
popenv [13]

:[end]