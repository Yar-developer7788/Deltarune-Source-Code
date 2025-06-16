.localvar 2 arguments
.localvar 24773 _index 11769

:[0]
push.v self.cardstart
pop.v.v self.i

:[1]
push.v self.i
push.v self.arraysize
cmp.v.v LT
bf [3]

:[2]
push.v self.i
push.v self.arrayoffset
add.v.v
push.v self.arraycap
mod.v.v
pop.v.v local._index
pushi.e -1
pushloc.v local._index
conv.v.i
push.v [array]self.points_y
pushi.e -1
pushloc.v local._index
conv.v.i
push.v [array]self.points_x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i draw_self(argc=0)
popz.v
push.v self.cardstart
pushi.e 0
cmp.i.v EQ
bf [8]

:[4]
push.v self.arraysize
push.v self.arraycap
cmp.v.v LT
bf [6]

:[5]
push.i 170887
setowner.e
push.v self.x
pushi.e -1
push.v self.arraysize
conv.v.i
pop.v.v [array]self.points_x
push.i 170888
setowner.e
push.v self.y
pushi.e -1
push.v self.arraysize
conv.v.i
pop.v.v [array]self.points_y
push.v self.arraysize
push.e 1
add.i.v
pop.v.v self.arraysize
b [7]

:[6]
push.i 170887
setowner.e
push.v self.x
pushi.e -1
push.v self.arrayoffset
conv.v.i
pop.v.v [array]self.points_x
push.i 170888
setowner.e
push.v self.y
pushi.e -1
push.v self.arrayoffset
conv.v.i
pop.v.v [array]self.points_y
push.v self.arrayoffset
pushi.e 1
add.i.v
push.v self.arraycap
mod.v.v
pop.v.v self.arrayoffset

:[7]
b [end]

:[8]
push.v self.cardstart
push.e 1
add.i.v
pop.v.v self.cardstart
push.v self.cardstart
push.v self.arraysize
cmp.v.v GTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]