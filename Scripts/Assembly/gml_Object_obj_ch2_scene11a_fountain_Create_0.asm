.localvar 2 arguments

:[0]
pushi.e 3143
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
call.i gml_Script_scr_marker_animated(argc=3)
pop.v.v self.fountain
push.v self.fountain
pushi.e -9
pushenv [2]

:[1]
push.i 1000450
pop.v.i self.depth
push.d 0.25
pop.v.d self.image_speed

:[2]
popenv [1]

:[end]