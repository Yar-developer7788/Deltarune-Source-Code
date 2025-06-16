.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.marker1
pushi.e 0
pop.v.i self.marker2
pushi.e 0
pop.v.i self.satisfied
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 371
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]