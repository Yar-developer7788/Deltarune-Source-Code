.localvar 2 arguments

:[0]
push.v self.drawshadow
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.body_obj
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[6]
push.v self.image_alpha
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.body_obj
pushi.e -9
push.v [stacktop]self.image_yscale
pushi.e 4
conv.i.d
div.d.v
push.v self.body_obj
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.y
push.v self.shadowheight
push.v self.image_yscale
pushi.e 1
add.i.v
mul.v.v
add.v.v
push.v self.shadowoffy
add.v.v
push.v self.x
push.v self.shadowoffx
add.v.v
push.v self.body_obj
pushi.e -9
push.v [stacktop]self.image_index
push.v self.body_obj
pushi.e -9
push.v [stacktop]self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]