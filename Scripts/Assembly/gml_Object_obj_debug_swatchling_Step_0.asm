.localvar 2 arguments

:[0]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.current_pal
push.d 0.01
add.d.v
call.i clamp(argc=3)
pop.v.v self.current_pal

:[2]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [end]

:[3]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.current_pal
push.d 0.01
sub.d.v
call.i clamp(argc=3)
pop.v.v self.current_pal

:[end]