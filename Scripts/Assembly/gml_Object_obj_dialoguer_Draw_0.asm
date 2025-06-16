.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [6]

:[2]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e -5
pushi.e 19
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 19
pop.v.v [array]self.tempflag
b [6]

:[5]
push.i 231375
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 19
pop.v.v [array]self.tempflag

:[6]
pushi.e -5
pushi.e 19
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
call.i gml_Script_scr_dbox(argc=0)
popz.v

:[8]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[10]
pushi.e -5
pushi.e 19
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.writer
pushi.e -9
push.v [stacktop]self.msgno
call.i gml_Script_cameray(argc=0)
pushi.e 174
pushglb.v global.darkzone
pushi.e 1
add.i.v
mul.v.i
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 16
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]