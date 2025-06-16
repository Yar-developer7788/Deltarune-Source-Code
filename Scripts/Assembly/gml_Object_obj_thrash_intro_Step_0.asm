.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.1
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
add.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.movetime
push.e 1
add.i.v
pop.v.v self.movetime
push.v self.movetime
pushi.e 18
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[3]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 310
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
pushi.e 350
pop.v.i self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.state
pushi.e 1
pop.v.i self.image_index
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 193
conv.i.v
b [10]

:[9]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[10]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [14]

:[13]
push.v self.shaketimer
push.d 0.2
sub.d.v
pop.v.v self.shaketimer
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[14]
push.v self.timer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [18]

:[15]
pushi.e 1083
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.con

:[17]
popenv [16]

:[18]
push.v self.timer
pushi.e 110
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [20]

:[19]
pushi.e 100
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer

:[20]
push.v self.timer
pushi.e 154
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [22]

:[21]
pushi.e 4
pop.v.i 357.gigaqueencon
pushi.e 0
pop.v.i 357.gigaqueentimer

:[22]
push.v self.timer
pushi.e 150
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [31]

:[23]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.image_index
push.v self.y
push.v self.basey
pushi.e 35
sub.i.v
cmp.v.v GTE
bf [27]

:[24]
push.d 0.5
conv.d.v
push.v self.basey
pushi.e 35
sub.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.y
push.v self.basey
sub.v.v
pushi.e 35
sub.i.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [26]

:[25]
push.v self.basey
pushi.e 35
sub.i.v
pop.v.v self.y

:[26]
b [28]

:[27]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.basey
pushi.e 38
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y

:[28]
push.v self.x
push.v self.basex
pushi.e 70
sub.i.v
cmp.v.v GTE
bf [31]

:[29]
push.d 0.5
conv.d.v
push.v self.basex
pushi.e 70
sub.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.x
push.v self.basex
sub.v.v
pushi.e 70
sub.i.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [31]

:[30]
push.v self.basex
pushi.e 70
sub.i.v
pop.v.v self.x

:[31]
push.v self.timer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [end]

:[32]
pushi.e 0
pop.v.i 813.slow_down
pushi.e 1083
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
call.i instance_destroy(argc=0)
popz.v
push.i 232336
setowner.e
push.s "boxing_boss.ogg"@27428
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_mus_loop_ext(argc=3)
popz.v

:[end]