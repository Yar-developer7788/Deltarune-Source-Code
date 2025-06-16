.localvar 2 arguments

:[0]
b [4]

> gml_Script_debug_printxy (locals=0, argc=3)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[2]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.camx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.camy
push.v arg.argument0
call.i gml_Script_camerax(argc=0)
add.v.v
pop.v.v self.camx
push.v arg.argument1
call.i gml_Script_cameray(argc=0)
add.v.v
pop.v.v self.camy
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v arg.argument2
push.v self.camy
push.v self.camx
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
push.v self.camx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
add.i.v
push.v self.camx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
sub.i.v
push.v self.camx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
push.v self.camx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
add.i.v
push.v self.camx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
sub.i.v
push.v self.camx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
sub.i.v
push.v self.camx
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
sub.i.v
push.v self.camx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
sub.i.v
push.v self.camx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
add.i.v
push.v self.camx
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
add.i.v
push.v self.camx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v arg.argument2
push.v self.camy
pushi.e 1
add.i.v
push.v self.camx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v arg.argument2
push.v self.camy
push.v self.camx
call.i draw_text(argc=3)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_debug_printxy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.debug_printxy
popz.v

:[end]