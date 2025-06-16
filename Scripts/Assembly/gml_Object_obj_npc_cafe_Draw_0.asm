.localvar 2 arguments

:[0]
push.v self.image_index_fake
push.v self.image_speed_fake
add.v.v
pop.v.v self.image_index_fake
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
b [3]

:[2]
pushi.e 0
pop.v.i self.fsiner
push.v self.remsprite
pop.v.v self._sprite

:[3]
push.v self._sprite
call.i sprite_get_height(argc=1)
pop.v.v self.recruitspriteheight
push.v self._sprite
call.i sprite_get_width(argc=1)
pop.v.v self.recruitspritewidth
push.v self._sprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspritewidth
sub.v.v
push.v self._spritex
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rx
push.v self._sprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspriteheight
pushi.e 2
mul.i.v
sub.v.v
push.v self._spritey
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.ry
push.v self.seat
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
push.v self.seat
pushi.e 3
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [10]

:[7]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ry
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.rx
add.v.v
pushi.e 35
add.i.v
push.v self.image_index_fake
push.v self._sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.fsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ry
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.rx
add.v.v
pushi.e 35
add.i.v
push.v self.image_index_fake
push.v self._sprite
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[9]
b [end]

:[10]
push.v self._sprite
call.i sprite_get_xoffset(argc=1)
neg.v
pushi.e 2
mul.i.v
push.v self.recruitspritewidth
add.v.v
push.v self._spritex
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.rx
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
push.v self.ry
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.rx
add.v.v
pushi.e 35
add.i.v
push.v self.image_index_fake
push.v self._sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.fsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
push.v self.ry
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.rx
add.v.v
pushi.e 35
add.i.v
push.v self.image_index_fake
push.v self._sprite
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[end]