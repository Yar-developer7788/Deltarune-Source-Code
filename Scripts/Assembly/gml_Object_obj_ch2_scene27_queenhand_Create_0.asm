.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
pushi.e -1
pop.v.i self.x
call.i gml_Script_cameray(argc=0)
pop.v.v self.ral_x
pushi.e -1
pop.v.i self.y
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v 988.depth
pushi.e 10
sub.i.v
pop.v.v self.depth

:[2]
call.i gml_Script_camerax(argc=0)
pushi.e 78
add.i.v
pop.v.v self.x_pos
pushi.e -1
pop.v.i self.y_pos
push.v self.y_pos
pop.v.v self.rem_y_pos
push.v self.x_pos
pop.v.v self.rem_x_pos
pushi.e 0
pop.v.i self.wobble
pushi.e 357
pop.v.i self.kr_sprite
pushi.e 371
pop.v.i self.su_sprite
pushi.e 361
pop.v.i self.ra_sprite
pushi.e 324
pop.v.i self.hand_sprite
pushi.e 1
pop.v.b self.su_animate
pushi.e 0
pop.v.i self.su_animsiner
pushi.e 0
pop.v.i self.su_anim_index
pushi.e 1
pop.v.b self.su_struggle
pushi.e 0
pop.v.b self.su_shocked
pushi.e 0
pop.v.b self.su_look_left
pushi.e 0
pop.v.b self.su_look_right
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 0
pop.v.b self.su_concerned
pushi.e 1
pop.v.b self.ra_struggle
pushi.e 0
pop.v.b self.ra_huh
pushi.e 0
pop.v.b self.ra_look
pushi.e 0
pop.v.b self.ra_smile
pushi.e 0
pop.v.b self.ra_scared
pushi.e 0
pop.v.b self.ra_stern
pushi.e 0
pop.v.b self.ra_mu
pushi.e 1
pop.v.b self.ra_animate
pushi.e 0
pop.v.i self.ra_animsiner
pushi.e 0
pop.v.i self.ra_anim_index
pushi.e 0
pop.v.b self.release
pushi.e 0
pop.v.b self.leave
pushi.e 0
pop.v.b self.ra_shake
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.target
pushi.e 5
pop.v.i self.shakeamt
pushi.e 1
pop.v.i self.shakereduct
pushi.e 1
pop.v.i self.shakespeed
pushi.e 0
pop.v.i self.nowx
pushi.e 0
pop.v.i self.nowy
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.climbtimer
pushi.e 0
pop.v.i self.climb
pushi.e 0
pop.v.b self.release_normal

:[end]