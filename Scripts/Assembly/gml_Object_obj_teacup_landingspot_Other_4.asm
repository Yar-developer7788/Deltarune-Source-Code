.localvar 2 arguments

:[0]
push.v self.teacupTarget
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1091
pop.v.i self.teacupTarget

:[2]
push.v self.teacupTarget
pushi.e -9
pushenv [6]

:[3]
push.v other.rideEnd
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
push.i 174199
setowner.e
push.v other.y
push.v other.x
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
push.v other.partyMember
conv.v.i
pop.v.v [array]self.endPos
b [6]

:[5]
push.i 174200
setowner.e
push.v other.y
push.v other.x
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
push.v other.partyMember
conv.v.i
pop.v.v [array]self.startPos

:[6]
popenv [3]
call.i instance_destroy(argc=0)
popz.v

:[end]