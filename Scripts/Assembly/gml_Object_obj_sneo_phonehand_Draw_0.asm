.localvar 2 arguments

:[0]
push.v self.visibiliytimer
push.e 1
add.i.v
pop.v.v self.visibiliytimer
push.v self.visibiliytimer
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
exit.i

:[2]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[4]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.jointy
push.v self.jointx
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 4
conv.i.v
push.v self.boss
pushi.e -9
push.v [stacktop]self.y
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
push.v self.jointy
push.v self.jointx
call.i draw_line_width(argc=5)
popz.v
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [8]

:[7]
pushi.e 1
conv.i.v
push.i 32768
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.jointy
push.v self.y
call.i lerp(argc=3)
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.jointx
push.v self.x
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 1993
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 32768
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.boss
pushi.e -9
push.v [stacktop]self.y
push.v self.jointy
call.i lerp(argc=3)
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
push.v self.jointx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 1993
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]