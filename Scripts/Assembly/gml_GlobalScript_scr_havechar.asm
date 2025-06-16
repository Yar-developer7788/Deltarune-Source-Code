.localvar 2 arguments
.localvar 10896 checker 2803

:[0]
b [27]

> gml_Script_scr_havechar (locals=1, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.checker
pushloc.v local.checker
push.s "susie"@70
cmp.s.v EQ
bt [4]

:[2]
pushloc.v local.checker
push.s "su"@71
cmp.s.v EQ
bt [4]

:[3]
pushloc.v local.checker
push.s "s"@6692
cmp.s.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 2
pop.v.i local.checker

:[7]
pushloc.v local.checker
push.s "ralsei"@72
cmp.s.v EQ
bt [10]

:[8]
pushloc.v local.checker
push.s "ra"@73
cmp.s.v EQ
bt [10]

:[9]
pushloc.v local.checker
push.s "r"@6696
cmp.s.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 3
pop.v.i local.checker

:[13]
pushloc.v local.checker
push.s "noelle"@74
cmp.s.v EQ
bt [16]

:[14]
pushloc.v local.checker
push.s "no"@75
cmp.s.v EQ
bt [16]

:[15]
pushloc.v local.checker
push.s "n"@9912
cmp.s.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 4
pop.v.i local.checker

:[19]
pushi.e 0
pop.v.i self._rreturn
pushi.e -5
pushi.e 0
push.v [array]self.char
pushloc.v local.checker
cmp.v.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self._rreturn

:[21]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushloc.v local.checker
cmp.v.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i self._rreturn

:[23]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushloc.v local.checker
cmp.v.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self._rreturn

:[25]
push.v self._rreturn
ret.v

:[26]
exit.i

:[27]
push.i [function]gml_Script_scr_havechar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_havechar
popz.v

:[end]