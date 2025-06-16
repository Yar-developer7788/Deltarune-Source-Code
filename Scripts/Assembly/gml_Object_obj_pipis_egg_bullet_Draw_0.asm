.localvar 2 arguments
.localvar 6180 lang 12637
.localvar 25630 x_shake 12638
.localvar 25631 y_shake 12639

:[0]
push.v self.drawlabel
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i local.lang
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i local.lang

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 12
add.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local.lang
pushi.e 2693
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [13]

:[5]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v LT
bf [7]

:[6]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[10]
push.v self.y
push.v 872.y
pushi.e 20
sub.i.v
push.v 872.sprite_height
add.v.v
cmp.v.v GT
bf [12]

:[11]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[12]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
b [40]

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [35]

:[14]
push.v self.image_angle
pushi.e 45
add.i.v
pop.v.v self.image_angle
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [20]

:[15]
push.v self.y
push.v 872.y
pushi.e 20
sub.i.v
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [17]

:[16]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.con

:[20]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -30
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.image_angle
push.d 0.24
pop.v.d self.gravity
push.v self.bouncespeed
pop.v.v self.vspeed
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[22]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v LT
bf [24]

:[23]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
cmp.v.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[27]
push.v self.y
push.v 872.y
pushi.e 20
sub.i.v
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [31]

:[28]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [31]

:[29]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.con

:[34]
b [40]

:[35]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x

:[37]
push.v self.image_angle
pushi.e 4
add.i.v
pop.v.v self.image_angle
push.v self.gravity_direction
pushi.e 180
cmp.i.v EQ
bf [40]

:[38]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v LT
bf [40]

:[39]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[40]
pushi.e 0
pop.v.i local.x_shake
pushi.e 0
pop.v.i local.y_shake
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [42]

:[41]
push.v self.shake
push.e 1
sub.i.v
pop.v.v self.shake
pushi.e 4
pushi.e 8
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v local.x_shake
pushi.e 4
pushi.e 8
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v local.y_shake

:[42]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.y_shake
add.v.v
push.v self.x
pushloc.v local.x_shake
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[43]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [46]

:[44]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
add.i.v
cmp.v.v LT
bf [46]

:[45]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 80
add.i.v
cmp.v.v LT
b [47]

:[46]
push.e 0

:[47]
bt [52]

:[48]
push.v self.directhit
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
add.i.v
cmp.v.v LT
b [51]

:[50]
push.e 0

:[51]
b [53]

:[52]
push.e 1

:[53]
bf [end]

:[54]
push.v self.gravity
push.d 0.01
add.d.v
pop.v.v self.gravity

:[end]