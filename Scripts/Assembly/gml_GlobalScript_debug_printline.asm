.localvar 2 arguments

:[0]
b [4]

> gml_Script_debug_printline (locals=0, argc=2)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[2]
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 480
pushi.e 8
push.v arg.argument1
mul.v.i
sub.v.i
pop.v.v self.yy
pushi.e 2
pop.v.i self.xx
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_debug_printline
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.debug_printline
popz.v

:[end]