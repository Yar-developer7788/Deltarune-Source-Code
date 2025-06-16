.localvar 2 arguments

:[0]
push.v self.dar
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
b [3]

:[2]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v

:[3]
push.v self.xx
pop.v.v self.textx
push.v self.yy
pop.v.v self.texty
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.choicetotal
pushi.e 1
add.i.v
cmp.v.v LT
bf [10]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mychoice
push.v self.i
cmp.v.v EQ
bf [7]

:[6]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.textposx
pop.v.v self.textx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.textposy
pop.v.v self.texty
push.v self.candraw
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.choicemsg
call.i string_hash_to_newline(argc=1)
push.v self.texty
push.v self.textx
call.i draw_text(argc=3)
popz.v

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[10]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [17]

:[11]
push.v self.candraw
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.choicetotal
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.mychoice
pushi.e -1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.hy
pushi.e 20
push.v self.dar
mul.v.i
add.v.v
pop.v.v self.hy

:[17]
pushi.e 1
pop.v.i self.candraw
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.hy
push.v self.hx
pushi.e 0
conv.i.v
pushi.e 4283
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]