.localvar 2 arguments

:[0]
push.v self.shadow
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shadow
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2947
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bt [3]

:[2]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.i 800000
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.depth

:[6]
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.bbox_left
pushi.e 3
add.i.v
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.bbox_bottom
pushi.e 2
add.i.v
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.y

:[8]
push.v self.jumping
pushi.e 1
cmp.i.v EQ
bf [15]

:[9]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bt [11]

:[10]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.v self.jumpy
neg.v
pushi.e 50
conv.i.d
div.d.v
push.d 0.5
add.d.v
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_alpha
b [15]

:[14]
push.v self.jumpy
neg.v
pushi.e 50
conv.i.d
div.d.v
push.d 0.5
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i draw_ellipse(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.jumpy
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]