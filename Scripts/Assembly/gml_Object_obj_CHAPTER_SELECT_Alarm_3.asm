.localvar 2 arguments
.localvar 10175 car 6393

:[0]
pushglb.v global.is_console
conv.v.b
bf [end]

:[1]
push.v self.chaptertoload_temp
pushi.e 2
cmp.i.v EQ
bf [end]

:[2]
pushi.e 1
pop.v.b self.chapter_is_loading
pushi.e 577
conv.i.v
pushi.e 240
pushi.e 577
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.i
pushi.e 320
pushi.e 577
conv.i.v
call.i sprite_get_width(argc=1)
sub.v.i
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.car
push.d 0.15
pushloc.v local.car
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[end]