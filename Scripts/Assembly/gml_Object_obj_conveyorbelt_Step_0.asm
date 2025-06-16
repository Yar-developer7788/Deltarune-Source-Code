.localvar 2 arguments
.localvar 21133 _xs 9038
.localvar 21134 _ys 9039

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 82
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 20
sub.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 20
sub.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[2]
push.v self.xspeed
pop.v.v local._xs
push.v self.yspeed
pop.v.v local._ys
pushi.e 82
pushenv [5]

:[3]
pushi.e 68
conv.i.v
push.v self.y
pushloc.v local._ys
add.v.v
push.v self.x
pushloc.v local._xs
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [5]

:[4]
push.v self.x
pushloc.v local._xs
add.v.v
pop.v.v self.x
push.v self.y
pushloc.v local._ys
add.v.v
pop.v.v self.y

:[5]
popenv [3]

:[end]