.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.talking
pushi.e 61
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushglb.v global.fc
pushi.e 21
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.talking

:[5]
push.v self.turnon
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.turnon

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[11]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [13]

:[12]
pushi.e 15
pop.v.i self.timer

:[13]
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.yscale
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[16]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [18]

:[17]
pushi.e 15
pop.v.i self.timer

:[18]
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 1.5
conv.d.v
call.i lerp(argc=3)
pop.v.v self.xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 0.4
conv.d.v
call.i lerp(argc=3)
pop.v.v self.yscale
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[20]
push.v self.turnoff
conv.v.b
bf [22]

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 2
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.turnoff
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[25]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [30]

:[26]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [28]

:[27]
pushi.e 15
pop.v.i self.timer

:[28]
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
push.d 0.4
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.yscale
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [30]

:[29]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[30]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [35]

:[31]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [33]

:[32]
pushi.e 15
pop.v.i self.timer

:[33]
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
call.i lerp(argc=3)
pop.v.v self.xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
call.i lerp(argc=3)
pop.v.v self.yscale
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[35]
push.v self.talking
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.talkframe
push.d 0.17
add.d.v
pop.v.v self.talkframe
b [38]

:[37]
pushi.e 0
pop.v.i self.talkframe

:[38]
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
push.v self.x
pushi.e 1
conv.i.v
pushi.e 2286
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 3
cmp.i.v NEQ
bf [40]

:[39]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.y
push.v self.x
push.v self.talkframe
pushi.e 2285
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 35
conv.i.v
call.i sin(argc=1)
pushi.e 36
add.i.v
pop.v.v self.sineheight
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
push.d 0.02
add.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.y
push.v self.x
push.v self.talkframe
pushi.e 2285
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
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
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2286
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]