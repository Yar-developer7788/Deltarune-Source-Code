.localvar 2 arguments

:[0]
push.v self.siner
push.d 1.5
add.d.v
pop.v.v self.siner
push.v self.t
pushi.e 400
cmp.i.v GTE
bf [5]

:[1]
push.v self.rs
push.d 0.5
add.d.v
pop.v.v self.rs
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
push.v self.rs
pushi.e 16
conv.i.d
div.d.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 500
conv.i.v
pushi.e 320
push.v self.i
push.v self.i
mul.v.v
add.v.i
push.v self.rs
push.v self.i
mul.v.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 320
push.v self.i
push.v self.i
mul.v.v
sub.v.i
push.v self.rs
push.v self.i
mul.v.v
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[5]
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 1.6
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 1.6
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.t
pushi.e 20
cmp.i.v GTE
bf [9]

:[6]
push.v self.soundcon
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
pushi.e 1
pop.v.i self.soundcon
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushi.e 228
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[9]
push.v self.t
pushi.e 70
cmp.i.v GTE
bf [11]

:[10]
push.v self.t
pushi.e 240
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
pushi.e 232
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.adjust
push.v self.eyebody
push.d 0.98
mul.d.v
pop.v.v self.eyebody

:[15]
popenv [14]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[16]
push.v self.t
pushi.e 240
cmp.i.v GTE
bf [18]

:[17]
push.v self.t
pushi.e 245
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
pushi.e 232
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.adjust

:[22]
popenv [21]
pushi.e 300
pop.v.i self.t

:[23]
push.v self.t
pushi.e 390
cmp.i.v GTE
bf [25]

:[24]
push.v self.t
pushi.e 395
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [29]

:[27]
pushi.e 400
pop.v.i self.t
pushi.e 3
pop.v.i self.siner
push.v self.soundcon
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2
pop.v.i self.soundcon
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 227
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[29]
push.v self.t
pushi.e 450
cmp.i.v GTE
bf [31]

:[30]
push.v self.ds2
push.d 0.02
add.d.v
pop.v.v self.ds2
push.v self.ds2
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[31]
push.v self.t
pushi.e 520
cmp.i.v GTE
bf [33]

:[32]
push.v self.ds3
push.d 0.01
add.d.v
pop.v.v self.ds3
push.v self.ds3
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[33]
push.v self.t
pushi.e 650
cmp.i.v GTE
bf [end]

:[34]
pushi.e 0
pop.v.i global.entrance
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fighting
call.i gml_Script_scr_become_light(argc=0)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 64
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[37]
call.i gml_Script_scr_fountain_levelup(argc=0)
popz.v
pushi.e 54
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]