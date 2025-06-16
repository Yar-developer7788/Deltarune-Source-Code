.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.bgsiner
pushi.e 100
pop.v.i self.siner
pushi.e 0
pop.v.i self.colcol
pushi.e 0
pop.v.i self.hscroll
pushi.e 1
pop.v.i self.eyebody
pushi.e 0
pop.v.i self.adjust
pushi.e 0
pop.v.i self.slowdown
push.i 65280
pop.v.i self.nowcolor
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [3]

:[1]
pushbltn.v builtin.room
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3230
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.fountainbg
pushi.e 64
push.v self.fountainbg
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 48
push.v self.fountainbg
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 2000000
push.v self.fountainbg
pushi.e -9
pop.v.i [stacktop]self.depth

:[3]
b [10]

> gml_Script_change_fountain_color_gml_Object_obj_darkfountain_Create_0 (locals=0, argc=1)
:[4]
pushbltn.v builtin.room
pushi.e 271
cmp.i.v EQ
bf [6]

:[5]
push.v arg.argument0
call.i gml_Script___background_set_colour(argc=1)
popz.v
push.v arg.argument0
pop.v.v self.nowcolor
b [9]

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
pushbltn.v builtin.room
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v arg.argument0
push.v self.fountainbg
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v arg.argument0
pop.v.v self.nowcolor

:[9]
exit.i

:[10]
push.i [function]gml_Script_change_fountain_color_gml_Object_obj_darkfountain_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.change_fountain_color
popz.v

:[end]