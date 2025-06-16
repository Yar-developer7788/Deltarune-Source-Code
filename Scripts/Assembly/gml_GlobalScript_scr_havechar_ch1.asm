.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_havechar_ch1 (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self._rreturn
pushi.e -5
pushi.e 0
push.v [array]self.char
push.v arg.argument0
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self._rreturn

:[3]
pushi.e -5
pushi.e 1
push.v [array]self.char
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self._rreturn

:[5]
pushi.e -5
pushi.e 2
push.v [array]self.char
push.v arg.argument0
cmp.v.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self._rreturn

:[7]
push.v self._rreturn
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_havechar_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_havechar_ch1
popz.v

:[end]