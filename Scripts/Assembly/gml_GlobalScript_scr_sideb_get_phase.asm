.localvar 2 arguments
.localvar 10819 phase 2741

:[0]
b [21]

> gml_Script_scr_sideb_get_phase (locals=1, argc=0)
:[1]
pushi.e 0
pop.v.i local.phase
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [19]

:[2]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 4
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i local.phase

:[7]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [9]

:[8]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 7
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pop.v.i local.phase

:[12]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 7
cmp.i.v GTE
bf [14]

:[13]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 20
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 3
pop.v.i local.phase

:[17]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 20
cmp.i.v GTE
bf [19]

:[18]
pushi.e 4
pop.v.i local.phase

:[19]
pushloc.v local.phase
ret.v

:[20]
exit.i

:[21]
push.i [function]gml_Script_scr_sideb_get_phase
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sideb_get_phase
popz.v

:[end]