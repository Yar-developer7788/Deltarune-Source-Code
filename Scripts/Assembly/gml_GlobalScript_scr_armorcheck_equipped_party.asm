.localvar 2 arguments
.localvar 6678 __totalwearing 973
.localvar 6679 __weari 974

:[0]
b [8]

> gml_Script_scr_armorcheck_equipped_party (locals=2, argc=1)
:[1]
pushi.e 0
pop.v.i local.__totalwearing
pushi.e 0
pop.v.i local.__weari

:[2]
pushloc.v local.__weari
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
pushloc.v local.__weari
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v local.__totalwearing
push.v arg.argument0
pushi.e -5
pushloc.v local.__weari
conv.v.i
push.v [array]self.char
call.i gml_Script_scr_armorcheck_equipped(argc=2)
add.v.v
pop.v.v local.__totalwearing

:[5]
push.v local.__weari
push.e 1
add.i.v
pop.v.v local.__weari
b [2]

:[6]
pushloc.v local.__totalwearing
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_armorcheck_equipped_party
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorcheck_equipped_party
popz.v

:[end]