.localvar 2 arguments

:[0]
pushi.e 1546
conv.i.v
pushi.e 220
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.puzz1
push.v self.puzz1
pushi.e -9
pushenv [2]

:[1]
push.i 175231
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sol
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sol
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.sol
pushi.e 3
pop.v.i self.max_suit

:[2]
popenv [1]
pushi.e 0
pop.v.i self.tried
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.wcon
pushi.e 0
pop.v.i self.con2
pushglb.v global.plot
pushi.e 154
cmp.i.v LT
bf [6]

:[3]
pushi.e 1
pop.v.i self.con
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1351
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.cutscene

:[5]
popenv [4]

:[6]
pushglb.v global.plot
pushi.e 154
cmp.i.v EQ
bf [10]

:[7]
pushi.e 300
pop.v.i self.con
push.v self.puzz1
pushi.e -9
pushenv [9]

:[8]
push.i 175235
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.suit
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.suit
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.suit

:[9]
popenv [8]

:[10]
pushglb.v global.plot
pushi.e 154
cmp.i.v GT
bf [end]

:[11]
push.v self.puzz1
pushi.e -9
pushenv [13]

:[12]
push.i 175235
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.suit
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.suit
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.suit

:[13]
popenv [12]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]