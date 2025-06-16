.localvar 2 arguments
.localvar 14519 left_x 6298
.localvar 14520 top_y 6299

:[0]
push.v self.is_active
conv.v.b
bf [end]

:[1]
push.v self.type
push.s "auto"@9638
cmp.s.v EQ
bf [4]

:[2]
push.v self.auto_timer
push.e 1
add.i.v
pop.v.v self.auto_timer
push.v self.auto_timer
pushi.e 120
cmp.i.v GTE
bf [4]

:[3]
pushi.e 0
pop.v.b self.is_active
pushi.e 0
pop.v.b global.savedata_pause
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.v self.font_face
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.xx
pushi.e 58
add.i.v
pop.v.v local.left_x
push.v self.yy
pushi.e 78
add.i.v
pop.v.v local.top_y
pushi.e 0
conv.b.v
pushloc.v local.top_y
push.v self.scale
mul.v.v
pushi.e 84
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
pushi.e 204
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.top_y
push.v self.scale
mul.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.xx
pushi.e 60
add.i.v
pop.v.v local.left_x
push.v self.yy
pushi.e 80
add.i.v
pop.v.v local.top_y
pushi.e 0
conv.b.v
pushloc.v local.top_y
push.v self.scale
mul.v.v
pushi.e 80
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
pushi.e 200
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.top_y
push.v self.scale
mul.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.window_text
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
pushi.e 100
push.v self.scale
mul.v.i
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.type
push.s "default"@14501
cmp.s.v EQ
bf [6]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.yy
pushi.e 139
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
pushi.e 138
push.v self.scale
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.s "OK"@14521
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
push.v self.scale
mul.v.v
pushi.e 135
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.left_x
push.v self.scale
mul.v.v
pushi.e 100
push.v self.scale
mul.v.i
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[6]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]