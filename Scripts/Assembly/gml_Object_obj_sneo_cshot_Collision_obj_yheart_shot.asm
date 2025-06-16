.localvar 2 arguments

:[0]
push.v self.opening
push.v other.y
push.v other.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
call.i angle_difference(argc=2)
call.i abs(argc=1)
push.v self.openingsize
cmp.v.v LTE
bf [2]

:[1]
exit.i

:[2]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [10]

:[3]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[7]
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
pushenv [9]

:[8]
pushi.e 1972
pop.v.i self.sprite_index

:[9]
popenv [8]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[10]
push.v self.destroyable
pushi.e -1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 0
pop.v.i self.angle_speed
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
pushi.e 1
pop.v.b self.hit
pushi.e 255
pop.v.i self.image_blend

:[end]