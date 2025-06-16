.localvar 2 arguments

:[0]
push.v self.invincible
pushi.e 0
cmp.i.v LTE
bf [8]

:[1]
pushi.e 4
pop.v.i self.invincible
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 10
pop.v.i self.invisible

:[3]
pushi.e 600
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.my_direction
pop.v.v 600.my_direction
pushi.e 600
pushenv [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]
b [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
popenv [10]

:[end]