.localvar 2 arguments

:[0]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
call.i draw_self(argc=0)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [3]

:[2]
push.v self.count
call.i string(argc=1)
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.s "obj_blocked_total_fx_slash_Draw_0_gml_9_0"@23390
conv.s.v
push.s "Blocked"@23391
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_blocked_total_fx_slash_Draw_0_gml_10_0"@23392
conv.s.v
push.s " ads!"@23393
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
b [4]

:[3]
push.s "obj_blocked_total_fx_slash_Draw_0_gml_9_0"@23390
conv.s.v
push.s "Blocked"@23391
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.v self.count
call.i string(argc=1)
push.s "obj_blocked_total_fx_slash_Draw_0_gml_10_0"@23392
conv.s.v
push.s " ads!"@23393
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v

:[4]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
b [16]

:[5]
push.v self.state
pushi.e 3
cmp.i.v LT
bf [16]

:[6]
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [10]

:[7]
push.v self.scale
push.d 0.25
add.d.v
pop.v.v self.scale
push.v self.scale
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
push.d 1.2
pop.v.d self.scale
pushi.e 0
pop.v.i self.state

:[9]
b [15]

:[10]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.scale
pushi.e 1
pop.v.i self.state
b [15]

:[12]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [15]

:[13]
push.v self.scale
push.d 0.25
sub.d.v
pop.v.v self.scale
push.v self.scale
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 6
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 6
add.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 6
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 6
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
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
push.v self.scale
push.v self.scale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.image_alpha
push.d 0.4
sub.d.v
pop.v.v self.image_alpha

:[18]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]