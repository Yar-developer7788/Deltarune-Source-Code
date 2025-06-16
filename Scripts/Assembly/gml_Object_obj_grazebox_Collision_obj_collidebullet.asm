.localvar 2 arguments
.localvar 21647 _grazetpfactor 9684
.localvar 21648 _grazetimefactor 9685

:[0]
push.v other.active
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.grazetpfactor
pop.v.v local._grazetpfactor
push.v self.grazetimefactor
pop.v.v local._grazetimefactor
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [24]

:[3]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [24]

:[4]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [16]

:[5]
push.v self.grazepoints
pushi.e 30
conv.i.d
div.d.v
pushloc.v local._grazetpfactor
mul.v.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [7]

:[6]
push.v global.turntimer
push.v self.timepoints
pushi.e 30
conv.i.d
div.d.v
pushloc.v local._grazetimefactor
mul.v.v
sub.v.v
pop.v.v global.turntimer

:[7]
pushi.e 364
pushenv [15]

:[8]
push.v self.grazetimer
pushi.e 0
cmp.i.v GTE
bf [10]

:[9]
push.v self.grazetimer
pushi.e 4
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 3
pop.v.i self.grazetimer

:[13]
push.v self.grazetimer
pushi.e 2
cmp.i.v LT
bf [15]

:[14]
pushi.e 2
pop.v.i self.grazetimer

:[15]
popenv [8]

:[16]
push.v self.grazed
pushi.e 0
cmp.i.v EQ
bf [24]

:[17]
pushi.e 1
pop.v.i self.grazed
push.v self.grazepoints
pushloc.v local._grazetpfactor
mul.v.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [19]

:[18]
push.v global.turntimer
push.v self.timepoints
pushloc.v local._grazetimefactor
mul.v.v
sub.v.v
pop.v.v global.turntimer

:[19]
pushi.e 357
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.grazenoise

:[21]
popenv [20]
pushi.e 364
pushenv [23]

:[22]
pushi.e 10
pop.v.i self.grazetimer

:[23]
popenv [22]

:[24]
popenv [3]

:[end]