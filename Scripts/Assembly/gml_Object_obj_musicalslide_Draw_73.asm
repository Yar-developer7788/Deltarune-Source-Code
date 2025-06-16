.localvar 2 arguments
.localvar 36494 _fadeAmt 18003

:[0]
push.v self.fadingOut
conv.v.b
bf [end]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.fadeToWhite
call.i gml_Script_ease_out_quad(argc=4)
pop.v.v local._fadeAmt
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local._fadeAmt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 20
add.i.v
pushbltn.v builtin.room_width
pushi.e 20
add.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]