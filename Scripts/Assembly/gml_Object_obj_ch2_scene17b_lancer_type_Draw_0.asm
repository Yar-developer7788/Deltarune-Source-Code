.localvar 2 arguments
.localvar 10805 x1 16260
.localvar 10806 y1 16261
.localvar 10807 x2 16262
.localvar 10808 y2 16263
.localvar 9260 color 16264
.localvar 107 i 16265
.localvar 9578 x_pos 16266

:[0]
push.v self.monitor_on
conv.v.b
bf [end]

:[1]
pushi.e 145
pop.v.i local.x1
pushi.e 34
pop.v.i local.y1
pushloc.v local.x1
pushi.e 2284
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.x2
pushloc.v local.y1
pushi.e 2284
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.y2
push.v self.overload
conv.v.b
bf [3]

:[2]
pushi.e 255
conv.i.v
b [4]

:[3]
pushi.e 190
conv.i.v
pushi.e 120
conv.i.v
pushi.e 60
conv.i.v
call.i make_color_rgb(argc=3)

:[4]
pop.v.v local.color
pushloc.v local.color
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
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
pushi.e 24
conv.i.v
pushi.e 142
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2880
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.overload
conv.v.b
not.b
bf [9]

:[5]
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
push.v self.l_amount
cmp.v.v LT
bf [8]

:[7]
push.v self.x_start_pos
pushloc.v local.i
pushi.e 169
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
mul.v.v
add.v.v
pop.v.v local.x_pos
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
push.v self.y_pos
push.v self.x
pushloc.v local.x_pos
add.v.v
pushi.e 0
conv.i.v
pushi.e 169
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[8]
push.v self.x_start_pos
push.v self.l_amount
pushi.e 169
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
mul.v.v
add.v.v
pop.v.v local.x1
push.v self.y_pos
pushi.e 1
sub.i.v
pop.v.v local.y1
pushloc.v local.x1
pushi.e 169
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.x2
push.v self.y_pos
pushi.e 1
sub.i.v
pushi.e 169
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.y2
push.v self.typer_alpha
push.e 1
add.i.v
pop.v.v self.typer_alpha
push.v self.fade
push.d 0.1
add.d.v
pop.v.v self.fade
pushi.e 2
push.v self.fade
mul.v.i
pushi.e 3
add.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
add.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [end]

:[9]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.typer_alpha
push.e 1
add.i.v
pop.v.v self.typer_alpha
push.v self.fade
push.d 0.1
add.d.v
pop.v.v self.fade
pushi.e 2
push.v self.fade
mul.v.i
pushi.e 3
add.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
add.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.s "obj_ch2_scene17b_lancer_type_slash_Draw_0_gml_44_0"@31344
conv.s.v
push.s "QUANTITY OVERLOAD"@31345
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 70
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]