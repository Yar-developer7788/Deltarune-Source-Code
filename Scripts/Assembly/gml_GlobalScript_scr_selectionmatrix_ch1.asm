.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_selectionmatrix_ch1 (locals=0, argc=2)
:[1]
push.v arg.argument0
pop.v.v self.slmxx
push.v arg.argument1
pop.v.v self.slmyy
push.v self.s_siner
pushi.e 2
add.i.v
pop.v.v self.s_siner
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.slmyy
pushi.e 3
add.i.v
push.v self.slmxx
pushi.e 210
add.i.v
push.v self.slmyy
push.v self.slmxx
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [6]

:[3]
push.v self.s_siner
push.v self.i
push.d 31.41592653589793
mul.d.v
add.v.v
pop.v.v self.myxx
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.slmyy
pushi.e 33
add.i.v
push.v self.slmxx
push.v self.slmyy
push.v self.slmxx
call.i draw_line_width(argc=5)
popz.v
pushi.e 2
conv.i.v
push.v self.slmyy
pushi.e 33
add.i.v
push.v self.slmxx
pushi.e 210
add.i.v
push.v self.slmyy
push.v self.slmxx
pushi.e 210
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 2
conv.i.v
push.v self.slmyy
pushi.e 33
add.i.v
push.v self.slmxx
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
sub.v.v
pushi.e 30
add.i.v
push.v self.slmyy
push.v self.slmxx
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
sub.v.v
pushi.e 30
add.i.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 2
conv.i.v
push.v self.slmyy
pushi.e 33
add.i.v
push.v self.slmxx
pushi.e 210
add.i.v
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushi.e 30
sub.i.v
push.v self.slmyy
push.v self.slmxx
pushi.e 210
add.i.v
push.v self.myxx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushi.e 30
sub.i.v
call.i draw_line_width(argc=5)
popz.v

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
exit.i

:[7]
push.i [function]gml_Script_scr_selectionmatrix_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_selectionmatrix_ch1
popz.v

:[end]