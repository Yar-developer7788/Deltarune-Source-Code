.localvar 2 arguments

:[0]
pushbltn.v builtin.os_type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.skiptimer
pushi.e 29
cmp.i.v LT
pop.v.b self.draw_screen

:[2]
push.v self.draw_screen
conv.v.b
bf [33]

:[3]
push.v self.PHASE
pushi.e 0
cmp.i.v EQ
bf [9]

:[4]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.factor
push.d 0.003
push.v self.siner
pushi.e 900
conv.i.d
div.d.v
add.v.d
sub.v.v
pop.v.v self.factor
push.v self.factor
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.factor
pushi.e 1
pop.v.i self.PHASE

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.h
cmp.v.v LT
bf [9]

:[8]
push.v self.siner
pushi.e 25
conv.i.d
div.d.v
push.v self.i
push.v self.mid
sub.v.v
call.i abs(argc=1)
push.d 0.05
mul.d.v
sub.v.v
pop.v.v self.ia
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.d 0.6
add.d.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff2
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.d 1.2
add.d.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff3
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff2
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff3
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
push.v self.PHASE
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
call.i draw_self(argc=0)
popz.v
push.v self.PHASETIMER
pushi.e 1
add.i.v
pop.v.v self.PHASETIMER
push.v self.PHASETIMER
pushi.e 30
cmp.i.v GTE
bf [12]

:[11]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.factor
pushi.e 2
pop.v.i self.PHASE
push.s "PROCESS_LOGO_slash_Draw_0_gml_37_0"@41880
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.tempflag

:[12]
push.v self.PHASE
pushi.e 2
cmp.i.v EQ
bf [33]

:[13]
push.v self.PHASEPLUS
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner

:[15]
push.v self.siner
pushi.e 20
cmp.i.v GTE
bf [17]

:[16]
pushi.e 1
pop.v.i self.PHASEPLUS

:[17]
push.v self.PHASEPLUS
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.AA
push.d 0.02
sub.d.v
pop.v.v self.AA
push.v self.AB
push.d 0.08
sub.d.v
pop.v.v self.AB

:[19]
push.v self.AB
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.mina
push.v self.mina
push.d 0.14
cmp.d.v GTE
bf [21]

:[20]
push.d 0.14
pop.v.d self.mina

:[21]
push.v self.factor2
push.d 0.05
add.d.v
pop.v.v self.factor2
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [24]

:[23]
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.image_index
pushi.e 4272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.image_index
pushi.e 4272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.image_index
pushi.e 4272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.image_index
pushi.e 4272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
push.v self.AA
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 4273
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.AA
push.d -0.46
cmp.d.v LTE
bf [26]

:[25]
pushi.e 30
pop.v.i builtin.room_speed

:[26]
push.v self.AA
push.d -0.5
cmp.d.v LTE
bf [28]

:[27]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
push.v self.ingame
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 421
conv.i.v
call.i room_goto(argc=1)
popz.v
b [33]

:[32]
pushi.e 420
conv.i.v
call.i room_goto(argc=1)
popz.v

:[33]
push.v self.ingame
pushi.e 0
cmp.i.v EQ
bf [end]

:[34]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [36]

:[35]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [40]

:[39]
push.d 0.04
pop.v.d self.fadespeed

:[40]
popenv [39]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
push.v self.NOISE
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.skipped

:[41]
push.v self.skipped
pushi.e 1
cmp.i.v EQ
bf [end]

:[42]
push.v self.skiptimer
pushi.e 1
add.i.v
pop.v.v self.skiptimer
push.v self.skiptimer
pushi.e 28
cmp.i.v GTE
bf [44]

:[43]
pushi.e 30
pop.v.i builtin.room_speed

:[44]
push.v self.skiptimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[45]
pushi.e 420
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]