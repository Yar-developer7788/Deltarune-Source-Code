.localvar 2 arguments
.localvar 28211 roomstring 15226
.localvar 28913 roomstring2 15227

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i gml_Script_camerax(argc=0)
pushi.e 72
sub.i.v
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pushi.e 88
add.i.v
pop.v.v self.yy
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[1]
push.v 82.x
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
cmp.v.v LTE
bf [3]

:[2]
push.v self.xx
pushi.e 320
add.i.v
pop.v.v self.xx

:[3]
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushi.e 360
add.i.v
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 96
add.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "$"@13512
pushglb.v global.gold
call.i string(argc=1)
add.v.s
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 120
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_moneydisplay_slash_Draw_0_gml_22_0"@28909
conv.s.v
push.s "HELD SPACE: "@28910
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.roomstring
push.s "obj_moneydisplay_slash_Draw_0_gml_23_0"@28911
conv.s.v
push.s "STORAGE SPACE: "@28912
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.roomstring2
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
pushloc.v local.roomstring
push.v self.itemcount
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 146
add.i.v
push.v self.xx
pushi.e 120
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
pushloc.v local.roomstring2
push.v self.itemcount
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 120
add.i.v
call.i draw_text(argc=3)
popz.v
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]