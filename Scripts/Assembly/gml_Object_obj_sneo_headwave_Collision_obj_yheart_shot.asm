.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp
push.v other.big
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
push.v self.hp
pushi.e 0
cmp.i.v LTE
b [4]

:[3]
push.e 1

:[4]
bf [8]

:[5]
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
pushenv [7]

:[6]
pushi.e 1972
pop.v.i self.sprite_index

:[7]
popenv [6]
call.i instance_destroy(argc=0)
popz.v
b [9]

:[8]
pushi.e 1
pop.v.i self.flash

:[9]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [end]

:[10]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [12]

:[11]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
popenv [11]

:[end]