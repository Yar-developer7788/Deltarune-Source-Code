.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
push.v self.drawtimer
pushi.e 20
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
push.s "obj_controller_dw_mansion_single_pot_slash_Draw_0_gml_9_0"@37871
conv.s.v
push.s "POTTERY NOT RESPECTED"@37872
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 138
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
push.v self.drawtimer
push.e 1
add.i.v
pop.v.v self.drawtimer
push.v self.drawtimer
pushi.e 40
cmp.i.v EQ
bf [end]

:[6]
pushi.e 0
pop.v.i self.drawtimer

:[end]