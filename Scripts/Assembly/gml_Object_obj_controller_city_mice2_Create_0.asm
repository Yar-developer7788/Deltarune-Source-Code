.localvar 2 arguments

:[0]
pushi.e 5000
pop.v.i self.depth
pushi.e 0
pop.v.i self.weird
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.weird

:[2]
pushi.e 0
pop.v.i self.inusecount
pushi.e -2
pop.v.i self.con
pushi.e 0
pop.v.i self.victory
pushi.e 0
pop.v.i self.noelle
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.scared
pushi.e 0
pop.v.i self.scarecount
pushi.e 0
pop.v.i self.endNoelle
pushi.e 0
pop.v.i self.walkDist
pushi.e 0
pop.v.i self.icon
pushi.e 0
pop.v.i self.fadeout
pushi.e 0
pop.v.i self.walkpoint
pushi.e 0
pop.v.b self.moveforward
pushi.e 0
pop.v.b self.inUse
pushi.e 0
pop.v.i self.instructionLerp
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.plot
pushi.e 77
cmp.i.v GTE
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [15]

:[7]
pushi.e 1165
pushenv [9]

:[8]
push.i 600000
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[9]
popenv [8]
pushi.e 1182
pushenv [11]

:[10]
pushi.e 1
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[11]
popenv [10]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[12]
pushi.e 287
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]