.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
push.d 0.05
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.hitmode
pushi.e 0
pop.v.i self.timer
push.s "ITEM"@15458
pop.v.s self.fusionResultName
push.s "ITEM"@15458
pop.v.s self.fusionResultType
pushi.e 0
pop.v.i self.item1
pushi.e 0
pop.v.i self.item2
pushi.e 0
pop.v.i self.item3
pushi.e 0
pop.v.i self.times_fused

:[end]