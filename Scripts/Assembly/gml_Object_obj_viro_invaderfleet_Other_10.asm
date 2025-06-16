.localvar 2 arguments
.localvar 23244 loopdir 10405

:[0]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v local.loopdir
push.i 170218
setowner.e
push.v self.fleetsize
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shotqueue
pushi.e 1
pop.v.i self.i

:[1]
push.v self.i
push.v self.fleetsize
cmp.v.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
pushloc.v local.loopdir
add.v.v
conv.v.i
push.v [array]self.shotqueue
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.fleetsize
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue
b [6]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
push.v self.fleetsize
cmp.v.v GTE
bf [6]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
push.v self.fleetsize
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue

:[6]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]