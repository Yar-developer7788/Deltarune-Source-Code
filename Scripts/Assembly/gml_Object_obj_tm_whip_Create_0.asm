.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.warnoffset
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.timepoints
push.v self.x
pop.v.v self.originx
push.v self.y
pop.v.v self.originy
pushi.e 0
pop.v.i self.dodraw
pushi.e 0
pop.v.i self.warning
pushi.e 0
pop.v.b self.quizmode
pushi.e 0
pop.v.b self.active

:[end]