.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.x
pop.v.v self.xx
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.sink
pushi.e -5
pushi.e 429
push.v [array]self.flag
pop.v.v self.progress
push.v self.progress
pushi.e 64
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.bubbleindex
pushi.e 1
pop.v.i self.bubblealpha

:[end]