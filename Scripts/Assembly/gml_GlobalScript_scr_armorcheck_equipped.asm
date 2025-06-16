.localvar 2 arguments
.localvar 6676 __wearing 968

:[0]
b [7]

> gml_Script_scr_armorcheck_equipped (locals=1, argc=2)
:[1]
pushi.e 0
pop.v.i local.__wearing
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.chararmor1
push.v arg.argument1
cmp.v.v EQ
bf [3]

:[2]
push.v local.__wearing
push.e 1
add.i.v
pop.v.v local.__wearing

:[3]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.chararmor2
push.v arg.argument1
cmp.v.v EQ
bf [5]

:[4]
push.v local.__wearing
push.e 1
add.i.v
pop.v.v local.__wearing

:[5]
pushloc.v local.__wearing
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_armorcheck_equipped
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorcheck_equipped
popz.v

:[end]