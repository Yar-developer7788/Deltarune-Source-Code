.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.visible
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
call.i draw_self(argc=0)
popz.v
push.v self.repeattimer
push.e 1
sub.i.v
pop.v.v self.repeattimer
push.v self.repeattimer
pushi.e 0
cmp.i.v LTE
bf [7]

:[5]
pushi.e 8
pop.v.i self.repeattimer
push.v self.main
conv.v.b
bf [7]

:[6]
pushi.e 113
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.noise

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[8]
push.v self.extendtimer
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
push.v self.main
conv.v.b
bf [11]

:[10]
pushi.e 155
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
push.v self.extendtimer
push.d 0.25
add.d.v
pop.v.v self.extendtimer
push.v self.extendtimer
pushi.e 4
cmp.i.v GTE
bf [15]

:[12]
pushi.e 2
pop.v.i self.con
push.v self.main
conv.v.b
bf [14]

:[13]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[14]
b [16]

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_yscale
push.v self.y
push.v self.x
push.v self.extendtimer
pushi.e 30
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 31
pop.v.i self.sprite_index
push.v self.imagetimer
push.e 1
add.i.v
pop.v.v self.imagetimer
push.v self.imagetimer
pushi.e 2
cmp.i.v GTE
bf [19]

:[18]
call.i gml_Script_scr_afterimage(argc=0)
popz.v
pushi.e 0
pop.v.i self.imagetimer

:[19]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_yscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 31
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_yscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 31
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]