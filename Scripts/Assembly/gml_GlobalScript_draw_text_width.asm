.localvar 2 arguments
.localvar 12303 _stringxscale 3978
.localvar 12304 _stringwidth 3979

:[0]
b [4]

> gml_Script_draw_text_width (locals=2, argc=4)
:[1]
pushi.e 1
pop.v.i local._stringxscale
push.v arg.argument2
call.i string_width(argc=1)
pop.v.v local._stringwidth
pushloc.v local._stringwidth
push.v arg.argument3
cmp.v.v GTE
bf [3]

:[2]
push.v arg.argument3
pushloc.v local._stringwidth
div.v.v
pop.v.v local._stringxscale

:[3]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._stringxscale
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i draw_text_transformed(argc=6)
popz.v
exit.i

:[4]
push.i [function]gml_Script_draw_text_width
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_text_width
popz.v

:[end]