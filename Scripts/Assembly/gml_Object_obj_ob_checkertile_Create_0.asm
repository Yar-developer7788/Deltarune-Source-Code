.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.destroyoffscreen
pushi.e 0
pop.v.i self.tolerance
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e 3
pop.v.i self.target
pushbltn.v builtin.room
push.v self.room_field_checkers4
cmp.v.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x

:[end]