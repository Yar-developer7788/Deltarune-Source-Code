.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.y
pushi.e 560
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 2
add.i.v
pop.v.v self.image_index

:[2]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [4]

:[3]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[4]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed

:[end]