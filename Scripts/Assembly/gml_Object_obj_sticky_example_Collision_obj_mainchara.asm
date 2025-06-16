.localvar 2 arguments

:[0]
push.v self.stuck
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.stuckbuffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e -20
conv.i.v
pushi.e 82
conv.i.v
call.i gml_Script_scr_stickto(argc=2)
popz.v
pushi.e 1
pop.v.i self.stuck

:[end]