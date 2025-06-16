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
bf [3]

:[2]
push.v self.myspeed
pushi.e 1
add.i.v
pop.v.v self.myspeed

:[3]
push.v other.big
conv.v.b
bf [5]

:[4]
pushi.e 4
pop.v.i self.myspeed

:[5]
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
bf [9]

:[8]
push.v self.swingdir
pushi.e -1
mul.i.v
pop.v.v self.swingdir

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