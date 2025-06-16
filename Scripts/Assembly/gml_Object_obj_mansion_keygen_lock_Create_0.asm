.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 10
pop.v.i self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.fade_timer
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.b self.unlocked

:[end]