.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.icon
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.dogIndex
pushi.e 18
pop.v.i self.raise
pushi.e 0
pop.v.i self.draw_mode
pushi.e 0
pop.v.i self.toss
pushi.e 0
pop.v.i self.tossdir
pushi.e 0
pop.v.i self.lidtimer
pushi.e 0
pop.v.i self.lid

:[end]