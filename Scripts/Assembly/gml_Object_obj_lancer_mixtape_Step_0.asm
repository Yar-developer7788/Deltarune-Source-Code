.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
pushglb.v global.menuno
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -10
pop.v.i self.timer

:[2]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[3]
pushi.e 60
pop.v.i self.timer
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]