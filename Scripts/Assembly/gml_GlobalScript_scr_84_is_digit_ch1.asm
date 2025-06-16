.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_84_is_digit_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
push.s "0"@3491
cmp.s.v GTE
bf [3]

:[2]
push.v arg.argument0
push.s "9"@9478
cmp.s.v LTE
b [4]

:[3]
push.e 0

:[4]
conv.b.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_84_is_digit_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_is_digit_ch1
popz.v

:[end]