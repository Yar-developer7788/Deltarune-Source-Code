.localvar 2 arguments
.localvar 24827 dot_text 11872

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [18]

:[1]
push.s "..."@2873
pop.v.s local.dot_text
push.v self.timer
pushi.e 45
cmp.i.v LT
bf [3]

:[2]
push.v self.variant
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.dottimer
push.e 1
add.i.v
pop.v.v self.dottimer

:[6]
push.v self.timer
pushi.e 15
cmp.i.v LT
bf [8]

:[7]
push.v self.variant
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.dottimer
push.e 1
add.i.v
pop.v.v self.dottimer

:[11]
push.v self.dottimer
pushi.e 5
cmp.i.v GTE
bf [13]

:[12]
push.s "."@6156
pop.v.s local.dot_text

:[13]
push.v self.dottimer
pushi.e 10
cmp.i.v GTE
bf [15]

:[14]
push.s ".."@24828
pop.v.s local.dot_text

:[15]
push.v self.dottimer
pushi.e 15
cmp.i.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i self.dottimer

:[17]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_20_0"@24829
conv.s.v
push.s "DOWNLOADING"@24830
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v 872.y
pushi.e 160
sub.i.v
push.v 872.x
call.i draw_text(argc=3)
popz.v
push.s "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_21_0"@24831
conv.s.v
push.s "ULTIMATE ATTACK"@24832
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushloc.v local.dot_text
add.v.v
push.v 872.y
pushi.e 140
sub.i.v
push.v 872.x
call.i draw_text(argc=3)
popz.v

:[18]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_29_0"@24833
conv.s.v
push.s "DOWNLOAD"@24834
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v 872.y
pushi.e 160
sub.i.v
push.v 872.x
call.i draw_text(argc=3)
popz.v
push.s "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_30_0"@24835
conv.s.v
push.s "FAILED"@24836
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v 872.y
pushi.e 140
sub.i.v
push.v 872.x
call.i draw_text(argc=3)
popz.v

:[20]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v 872.y
pushi.e 90
sub.i.v
push.v 872.x
pushi.e 80
add.i.v
push.v 872.y
pushi.e 110
sub.i.v
push.v 872.x
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
push.v 872.y
pushi.e 90
sub.i.v
push.v 872.x
pushi.e 80
sub.i.v
push.v self.barprogress
add.v.v
push.v 872.y
pushi.e 110
sub.i.v
push.v 872.x
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]