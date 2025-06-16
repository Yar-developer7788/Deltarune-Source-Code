.localvar 2 arguments

:[0]
push.v self.float
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.floatsiner
push.e 1
add.i.v
pop.v.v self.floatsiner
push.v self.floatsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.floaty

:[2]
push.v self.shadow
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.x
push.v self.fakeshadow
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.fakeshadow
pushi.e -9
push.v [stacktop]self.sprite_height
sub.v.v
push.v self.fakeshadow
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.sprite_index
push.v self.fakeshadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.fakeshadow
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[4]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.fakey
add.v.v
push.v self.floaty
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]