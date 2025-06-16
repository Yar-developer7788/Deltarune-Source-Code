.localvar 2 arguments

:[0]
push.v self.canchoose
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.dar
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "main"@6173
conv.s.v
b [4]

:[3]
push.s "mainbig"@6175
conv.s.v

:[4]
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.xx
pop.v.v self.textx
push.v self.yy
pop.v.v self.texty
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
push.v self.choicetotal
pushi.e 1
add.i.v
cmp.v.v LT
bf [10]

:[6]
push.v self.mychoice
push.v self.i
cmp.v.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
b [9]

:[8]
push.i 16777215
conv.i.v

:[9]
call.i draw_set_color(argc=1)
popz.v
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
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.choicemsg
call.i string_hash_to_newline(argc=1)
push.v self.texty
push.v self.textx
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[10]
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
pushi.e 2537
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]