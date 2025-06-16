.localvar 2 arguments

:[0]
push.v self.explosion_hide
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
pushi.e 3
pop.v.i 643.endattack
push.v 643.endattack
pushi.e 2
cmp.i.v EQ
bf [7]

:[4]
push.v self.timer
pushi.e 7
cmp.i.v GTE
bf [6]

:[5]
push.v self.explosion_alpha
push.d 0.1
sub.d.v
pop.v.v self.explosion_alpha

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
call.i clamp(argc=3)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2533
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[7]
push.v self.explodesfx
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.explodesfx
pushi.e 223
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushi.e 209
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[9]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.timer
add.v.v
push.v self.image_xscale
push.v self.timer
pushi.e 2
mul.i.v
add.v.v
push.v self.y
push.v self.x
pushi.e 50
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2023
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 12
conv.i.d
div.d.v
call.i clamp(argc=3)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2533
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]