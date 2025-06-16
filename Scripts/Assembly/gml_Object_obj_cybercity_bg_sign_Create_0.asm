.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.l
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.h
push.v self.l
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.l

:[2]
push.v self.h
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.h

:[4]
pushi.e 0
pop.v.i self.image_speed
push.v self.depth
pushi.e 5000
cmp.i.v NEQ
bf [end]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]