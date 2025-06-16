.localvar 2 arguments

:[0]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.image_alpha
push.i 65280
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.newgreen
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.total
pushi.e 1
sub.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.newgreen
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wy
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.wx
push.v self.wd
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wx
push.v self.wd
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
pushi.e 0
conv.i.v
push.i 32768
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.wy
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.wx
push.v self.wd
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wy
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.wx
push.v self.wd
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.image_alpha
push.d 0.4
sub.d.v
push.i 8421376
conv.i.v
push.v self.image_angle
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.image_xscale
pushi.e 2
mul.i.v
push.v self.y
push.v self.x
push.v self.wd
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.2
sub.d.v
push.i 32768
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.d 1.5
mul.d.v
push.v self.image_xscale
push.d 1.5
mul.d.v
push.v self.y
push.v self.x
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]