.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.dojoFlag
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.noroom
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.fsiner
pushi.e 1
pop.v.i self.dojoPrizeValue
push.s "money"@6941
pop.v.s self.dojoPrizeType
push.s "money"@6941
pop.v.s self.dojoPrizeName

:[end]