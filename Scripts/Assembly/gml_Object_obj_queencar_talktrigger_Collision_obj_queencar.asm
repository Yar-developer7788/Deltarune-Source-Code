.localvar 2 arguments

:[0]
push.v self.specialtalkcon
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.dotalk
push.v self.talkcon
push.e 1
add.i.v
pop.v.v self.talkcon

:[3]
popenv [2]
b [5]

:[4]
push.v self.specialtalkcon
pop.v.v other.specialtalkcon
pushi.e 1
pop.v.i other.dospecialtalk

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]