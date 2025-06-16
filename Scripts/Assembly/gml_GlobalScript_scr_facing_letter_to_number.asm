.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_facing_letter_to_number (locals=0, argc=1)
:[1]
push.v arg.argument0
push.s "d"@6706
cmp.s.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
push.v arg.argument0
push.s "r"@6696
cmp.s.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
ret.v

:[5]
push.v arg.argument0
push.s "l"@6707
cmp.s.v EQ
bf [7]

:[6]
pushi.e 3
conv.i.v
ret.v

:[7]
push.v arg.argument0
push.s "u"@6708
cmp.s.v EQ
bf [9]

:[8]
pushi.e 2
conv.i.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_facing_letter_to_number
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_facing_letter_to_number
popz.v

:[end]