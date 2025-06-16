.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [15]

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
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp
push.v other.big
conv.v.b
bt [7]

:[6]
push.v self.hp
pushi.e 0
cmp.i.v LTE
b [8]

:[7]
push.e 1

:[8]
bf [12]

:[9]
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
pushenv [11]

:[10]
pushi.e 1972
pop.v.i self.sprite_index

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v
b [14]

:[12]
pushi.e 1
pop.v.i self.flash
push.v self.siner
push.v self.swingdir
add.v.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
cmp.v.v LT
bf [14]

:[13]
push.v self.swingdir
pushi.e -1
mul.i.v
pop.v.v self.swingdir

:[14]
b [end]

:[15]
push.v self.destroyable
pushi.e -1
cmp.i.v EQ
bf [end]

:[16]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [18]

:[17]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
popenv [17]

:[end]