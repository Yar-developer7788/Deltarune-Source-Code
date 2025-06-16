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
bf [6]

:[5]
pushi.e 10
pop.v.i self.breaking
pushi.e 0
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.speed
push.v 646.sizeup
push.v self.shrinksize
add.v.v
pop.v.v 646.sizeup
push.i 16777215
pop.v.i self.image_blend
pushi.e 2014
pop.v.i self.sprite_index

:[6]
pushi.e 1
pop.v.i self.flash
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[end]