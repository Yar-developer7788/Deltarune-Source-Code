.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 23
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 90
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 50
conv.i.d
div.d.v
sub.v.i
pop.v.v self.depth

:[end]