.localvar 2 arguments

:[0]
push.v self.x
push.v self.sprite_xoffset
sub.v.v
push.v self.mouthx
cmp.v.v LT
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.scale
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.scale
push.d 0.025
add.d.v
pop.v.v self.scale

:[3]
push.v self.scale
push.d 0.5
mul.d.v
pop.v.v self.image_xscale
push.v self.scale
push.d 0.8
mul.d.v
pop.v.v self.image_yscale
push.v self.x
pushi.e 3
push.v self.scale
mul.v.i
sub.v.v
pop.v.v self.xx
push.v self.y
pushi.e 9
push.v self.scale
mul.v.i
sub.v.v
pop.v.v self.yy
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.bulletletter
push.v self.yy
push.v self.xx
push.v self.scale
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.bulletletter
push.v self.yy
push.v self.scale
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.bulletletter
push.v self.yy
push.v self.xx
push.v self.scale
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.bulletletter
push.v self.yy
push.v self.scale
sub.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.bulletletter
push.v self.yy
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v

:[end]