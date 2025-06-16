.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]

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
push.v self.sprite_index
pushi.e 2048
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 2048
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.i 68097
setowner.e
pushi.e 99
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.d 0.5
pop.v.d self.image_speed

:[9]
b [end]

:[10]
push.v self.destroyable
pushi.e -1
cmp.i.v EQ
bf [end]

:[11]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]

:[end]