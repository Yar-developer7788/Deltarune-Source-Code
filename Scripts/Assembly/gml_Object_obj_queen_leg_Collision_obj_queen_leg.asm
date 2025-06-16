.localvar 2 arguments

:[0]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [2]

:[1]
push.v other.direction
pushi.e 180
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 20
pop.v.i self.hurttimer
push.v self.x
pop.v.v self.hurtx
push.v self.y
pop.v.v self.hurty
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [6]

:[5]
push.v self.stomphold
push.e 1
sub.i.v
pop.v.v self.stomphold
push.d -0.1
pop.v.d self.stompspeed
push.d 0.8
pop.v.d self.stomplerp
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 28
pop.v.i self.hittimer

:[6]
popenv [5]

:[end]