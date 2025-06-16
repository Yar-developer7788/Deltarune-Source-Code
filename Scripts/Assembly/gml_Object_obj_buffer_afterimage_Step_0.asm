.localvar 2 arguments

:[0]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [3]

:[1]
exit.i

:[2]
b [end]

:[3]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]