.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.theScore
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 14483711
pop.v.i self.scoreCol
pushi.e 0
pop.v.i self.treasure
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]