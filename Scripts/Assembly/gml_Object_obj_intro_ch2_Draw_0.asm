.localvar 2 arguments

:[0]
push.v self.show_queen
conv.v.b
bf [5]

:[1]
push.v self.queen_animate
conv.v.b
bf [3]

:[2]
push.v self.queen_siner
push.e 1
add.i.v
pop.v.v self.queen_siner
push.v self.queen_siner
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.queen_sprite_index
b [4]

:[3]
pushi.e 0
pop.v.i self.queen_sprite_index

:[4]
push.v self.queen_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.queen_y_pos
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 4
conv.i.d
div.d.v
push.v self.queen_sprite_index
push.v self.queen_sprite
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[5]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [13]

:[9]
pushi.e 0
pop.v.i self.logopieces
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [12]

:[11]
push.i 167733
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.drawlogopart
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.logotimer

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.logotimer
push.e 1
add.i.v
pop.v.v self.logotimer
push.v self.logotimer
pushi.e 8
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.logotimer
pushi.e 80
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [37]

:[18]
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
push.d 0.8
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.v self.logopieces
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.i 167733
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.drawlogopart

:[20]
push.v self.logopieces
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.drawlogopart

:[22]
push.v self.logopieces
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.drawlogopart

:[24]
push.v self.logopieces
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.drawlogopart

:[26]
push.v self.logopieces
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.drawlogopart

:[28]
push.v self.logopieces
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.drawlogopart

:[30]
push.v self.logopieces
pushi.e 6
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.drawlogopart

:[32]
push.v self.logopieces
pushi.e 7
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.drawlogopart

:[34]
push.v self.logopieces
pushi.e 8
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.drawlogopart

:[36]
push.v self.logopieces
push.e 1
add.i.v
pop.v.v self.logopieces

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [42]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.drawlogopart
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
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
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
push.v self.i
pushi.e 2108
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [38]

:[42]
push.v self.logotimer
pushi.e 120
cmp.i.v EQ
bf [44]

:[43]
pushi.e 6
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[44]
push.v self.logotimer
pushi.e 120
cmp.i.v GTE
bf [46]

:[45]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 900
conv.i.v
pushi.e 10
conv.i.v
push.s "CHAPTER 2"@14337
conv.s.v
pushi.e 120
conv.i.v
pushi.e 105
conv.i.v
call.i draw_text_ext(argc=5)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v

:[46]
push.v self.logotimer
pushi.e 240
cmp.i.v GTE
bf [end]

:[47]
pushi.e 244
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]