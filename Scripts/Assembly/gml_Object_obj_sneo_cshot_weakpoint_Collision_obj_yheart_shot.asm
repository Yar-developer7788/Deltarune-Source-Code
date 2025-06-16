.localvar 2 arguments

:[0]
push.v self.deathtimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.flash

:[4]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp
call.i @@Other@@(argc=0)
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
push.v other.big
conv.v.b
bt [10]

:[9]
push.v self.hp
pushi.e 0
cmp.i.v LTE
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
pushi.e 4
pop.v.i self.deathtimer
pushi.e 0
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.angle_speed
pushi.e 1
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.hitfreeze
pushi.e 0
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 16777215
pop.v.i self.image_blend
push.i 65535
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 2014
pop.v.i self.sprite_index

:[end]