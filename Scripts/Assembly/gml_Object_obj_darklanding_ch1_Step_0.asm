.localvar 2 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1351
pushenv [3]

:[2]
pushi.e 4200
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i global.facing

:[3]
popenv [2]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [5]

:[4]
pushi.e 16
pop.v.i global.plot

:[5]
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v

:[end]