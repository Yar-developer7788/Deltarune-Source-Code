.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [5]

:[1]
push.v self.y
pushi.e 560
cmp.i.v GTE
bf [3]

:[2]
push.v self.image_index
pushi.e 2
add.i.v
pop.v.v self.image_index

:[3]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[5]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]