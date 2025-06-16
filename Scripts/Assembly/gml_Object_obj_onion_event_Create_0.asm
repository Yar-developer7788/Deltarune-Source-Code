.localvar 2 arguments

:[0]
pushi.e 81
conv.i.v
pushi.e 120
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.onion
pushi.e 0
pop.v.i self.tents
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.once
pushi.e 0
pop.v.i self.ocon
pushi.e 0
pop.v.i self.onioncount
pushi.e 0
pop.v.i self.customcon
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.is_console
conv.v.b
bf [end]

:[2]
push.i 231204
setowner.e
pushglb.v global.game_won
pushi.e -5
pushi.e 258
pop.v.v [array]self.flag

:[end]