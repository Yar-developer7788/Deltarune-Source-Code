.localvar 2 arguments
.localvar 14253 easedlerp 5979

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.image_speed
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 182
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.timer
pushi.e 21
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
pushi.e 2
conv.i.v
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pop.v.v local.easedlerp
pushloc.v local.easedlerp
pushi.e 720
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_angle

:[7]
push.v self.timer
pushi.e 25
cmp.i.v GT
bf [9]

:[8]
push.v self.timer
pushi.e 36
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.timer
pushi.e 25
sub.i.v
pushi.e 10
conv.i.d
div.d.v
push.v 372.x
pushi.e 35
add.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[12]
push.v self.timer
pushi.e 35
cmp.i.v GT
bf [14]

:[13]
push.v self.image_xscale
push.d 0.4
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.4
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[14]
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [end]

:[15]
pushi.e 0
pop.v.i self.star
pushi.e 120
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]