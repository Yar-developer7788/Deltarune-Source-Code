.localvar 2 arguments
.localvar 21218 objcheck1 9164
.localvar 21219 objcheck2 9165

:[0]
push.v self.type
push.s "banana"@21209
cmp.s.v EQ
bf [end]

:[1]
pushi.e 304
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
pop.v.v local.objcheck1
pushi.e 304
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i place_meeting(argc=3)
pop.v.v local.objcheck2
pushloc.v local.objcheck1
pushi.e 20
cmp.i.v GTE
bf [5]

:[2]
pushloc.v local.objcheck1
pushi.e -9
pushenv [4]

:[3]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[4]
popenv [3]

:[5]
pushloc.v local.objcheck2
pushi.e 20
cmp.i.v GTE
bf [end]

:[6]
pushloc.v local.objcheck2
pushi.e -9
pushenv [8]

:[7]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[8]
popenv [7]

:[end]