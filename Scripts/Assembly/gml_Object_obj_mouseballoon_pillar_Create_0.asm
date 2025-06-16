.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.completed
pushi.e 1
pop.v.i self.micerequired
pushi.e -1
pop.v.i self.pillarid
push.i 900000
pop.v.i self.depth
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[end]