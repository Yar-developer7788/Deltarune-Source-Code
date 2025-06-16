.localvar 2 arguments

:[0]
push.v self.leave
conv.v.b
not.b
bf [9]

:[1]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.y_pos
add.v.v
push.v self.x
push.v self.x_pos
add.v.v
pushi.e 0
conv.i.v
push.v self.kr_sprite
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.y_pos
add.v.v
push.v self.x
push.v self.x_pos
add.v.v
push.v self.su_anim_index
push.v self.su_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.ra_shake
conv.v.b
bf [7]

:[4]
push.v self.shakeamt
push.v self.shakereduct
sub.v.v
pop.v.v self.shakeamt
push.v self.on
pushi.e -1
mul.i.v
pop.v.v self.on
push.v self.nowx
push.v self.shakeamt
push.v self.on
mul.v.v
add.v.v
pop.v.v self.ral_x
push.v self.shakeamt
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushi.e 0
pop.v.b self.ra_shake
push.v self.x
pop.v.v self.ral_x

:[6]
b [8]

:[7]
push.v self.x
pop.v.v self.ral_x

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.y_pos
add.v.v
push.v self.ral_x
push.v self.x_pos
add.v.v
push.v self.ra_anim_index
push.v self.ra_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.y_pos
add.v.v
push.v self.x
push.v self.x_pos
add.v.v
pushi.e 0
conv.i.v
push.v self.hand_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]