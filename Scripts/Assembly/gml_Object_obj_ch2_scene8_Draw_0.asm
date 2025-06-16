.localvar 2 arguments

:[0]
push.v self.drawdoor
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.visible
pushi.e 908
pop.v.i self.sprite_index
pushi.e 138
pop.v.i self.x
pushi.e 48
pop.v.i self.y
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 74
conv.i.v
pushi.e 181
conv.i.v
pushi.e 27
conv.i.v
pushi.e 138
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.darkbg
pushi.e 0
cmp.i.v EQ
bf [6]

:[2]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [4]

:[3]
pushi.e 2785
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
b [5]

:[4]
pushi.e 1606
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)

:[5]
pop.v.v self.px
pushi.e 1
push.v self.px
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.px
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.1
push.v self.px
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.i 100000
push.v self.px
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.5
conv.d.v
push.i 8388608
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
push.v self.px
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.v self.px
pushi.e -9
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.px
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 1
pop.v.i self.darkbg

:[6]
push.v self.xsin
push.d 0.01
add.d.v
pop.v.v self.xsin
push.v self.xsin
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.xsin

:[8]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
pop.v.i self.image_index
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v self.amt
pushi.e 1
pop.v.i self.i

:[9]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [11]

:[10]
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.d
push.v self.i
div.v.d
push.v self.amt
add.v.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.amt
pushi.e 3
mul.i.v
add.v.i
pushi.e 1
push.v self.amt
pushi.e 3
mul.i.v
add.v.i
pushi.e 51
conv.i.v
pushi.e 160
conv.i.v
pushi.e 2
conv.i.v
pushi.e 909
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.amt
pushi.e 2
mul.i.v
add.v.i
pushi.e 1
push.v self.amt
pushi.e 2
mul.i.v
add.v.i
pushi.e 51
conv.i.v
pushi.e 160
conv.i.v
pushi.e 2
conv.i.v
pushi.e 909
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.darkbg
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
push.v self.amt
pushi.e 3
mul.i.v
push.v self.xsin
add.v.v
push.v self.px
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[end]