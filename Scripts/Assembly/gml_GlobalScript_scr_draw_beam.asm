.localvar 2 arguments
.localvar 111 __xx 58
.localvar 112 __yy 59
.localvar 114 _end0 60
.localvar 115 _end1 61
.localvar 116 _end2 62

:[0]
b [4]

> gml_Script_scr_draw_beam (locals=5, argc=8)
:[1]
push.v arg.argument0
pop.v.v local.__xx
push.v arg.argument1
pop.v.v local.__yy
push.v arg.argument4
pushi.e 0
conv.i.v
push.v arg.argument2
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._end0
pushloc.v local._end0
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.__xx
add.v.v
pop.i.v [stacktop]self.x
pushloc.v local._end0
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.__yy
add.v.v
pop.i.v [stacktop]self.y
push.v arg.argument4
push.v arg.argument3
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
push.v arg.argument2
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._end1
pushloc.v local._end1
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.__xx
add.v.v
pop.i.v [stacktop]self.x
pushloc.v local._end1
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.__yy
add.v.v
pop.i.v [stacktop]self.y
push.v arg.argument4
push.v arg.argument3
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
push.v arg.argument2
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._end2
pushloc.v local._end2
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.__xx
add.v.v
pop.i.v [stacktop]self.x
pushloc.v local._end2
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.__yy
add.v.v
pop.i.v [stacktop]self.y
push.v arg.argument5
call.i draw_set_color(argc=1)
popz.v
push.v arg.argument6
call.i draw_set_alpha(argc=1)
popz.v
push.v arg.argument7
conv.v.b
bf [3]

:[2]
pushi.e 0
conv.i.v
push.v arg.argument3
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._end0
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._end0
pushi.e -9
push.v [stacktop]self.x
call.i draw_circle(argc=4)
popz.v

:[3]
pushi.e 0
conv.i.v
pushloc.v local._end2
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._end2
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._end1
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._end1
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.__yy
pushloc.v local.__xx
call.i draw_triangle(argc=7)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scr_draw_beam
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_beam
popz.v

:[end]