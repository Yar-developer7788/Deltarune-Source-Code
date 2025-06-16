.localvar 2 arguments
.localvar 36459 _teacups 17955

:[0]
pushi.e 1091
pop.v.i local._teacups
push.v self.specificTeacup
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v self.specificTeacup
pop.v.v local._teacups

:[2]
pushloc.v local._teacups
pushi.e -9
pushenv [7]

:[3]
pushi.e 1
pop.v.b self.reverse
pushi.e 0
pop.v.b self.tutorialRide
push.v self.endY
pop.v.v self.y
pushi.e 1092
pushenv [6]

:[4]
push.v self.master
push.v other.id
cmp.v.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [4]

:[7]
popenv [3]

:[end]