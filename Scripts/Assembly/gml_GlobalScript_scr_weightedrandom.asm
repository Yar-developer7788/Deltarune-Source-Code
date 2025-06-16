.localvar 2 arguments
.localvar 6467 _maxvalue 763
.localvar 338 _i 764
.localvar 6468 _randomvalue 765

:[0]
b [10]

> gml_Script_scr_weightedrandom (locals=3, argc=0)
:[1]
pushi.e 0
pop.v.i local._maxvalue
pushi.e 0
pop.v.i local._i

:[2]
pushloc.v local._i
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [4]

:[3]
push.v local._maxvalue
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
add.v.v
pop.v.v local._maxvalue
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[4]
pushloc.v local._maxvalue
call.i random(argc=1)
pop.v.v local._randomvalue
pushi.e 0
pop.v.i local._maxvalue
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [9]

:[6]
push.v local._maxvalue
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
add.v.v
pop.v.v local._maxvalue
pushloc.v local._randomvalue
pushloc.v local._maxvalue
cmp.v.v LTE
bf [8]

:[7]
pushloc.v local._i
ret.v

:[8]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_weightedrandom
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weightedrandom
popz.v

:[end]