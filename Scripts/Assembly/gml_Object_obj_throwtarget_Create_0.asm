.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.good
pushi.e 0
pop.v.i self.offing
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 401
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tt
push.v self.depth
pushi.e 1
add.i.v
push.v self.tt
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.tt
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.offing
pushi.e 0
pop.v.i self.good
push.v self.spr_checkers_idle_crownless
pop.v.v self.sprite_index

:[3]
popenv [2]

:[4]
pushi.e 0
pop.v.i self.con

:[end]