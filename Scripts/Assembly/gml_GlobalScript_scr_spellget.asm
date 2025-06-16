.localvar 2 arguments
.localvar 10793 __spellj 2706
.localvar 10794 __openslot 2707
.localvar 10795 __haveit 2708

:[0]
b [15]

> gml_Script_scr_spellget (locals=3, argc=2)
:[1]
pushi.e 0
pop.v.i local.__spellj
pushi.e -1
pop.v.i local.__openslot
pushi.e 0
pop.v.i local.__haveit
pushi.e 0
pop.v.i local.__spellj

:[2]
pushloc.v local.__spellj
pushi.e 12
cmp.i.v LT
bf [9]

:[3]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.spell
pushloc.v local.__spellj
conv.v.i
pushaf.e
push.v arg.argument1
cmp.v.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i local.__haveit

:[5]
pushloc.v local.__openslot
pushi.e -1
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.spell
pushloc.v local.__spellj
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushloc.v local.__spellj
pop.v.v local.__openslot

:[8]
push.v local.__spellj
push.e 1
add.i.v
pop.v.v local.__spellj
b [2]

:[9]
pushloc.v local.__openslot
pushi.e 0
cmp.i.v GTE
bf [11]

:[10]
pushloc.v local.__haveit
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.i 67340028
setowner.e
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.spell
pushloc.v local.__openslot
conv.v.i
popaf.e

:[14]
exit.i

:[15]
push.i [function]gml_Script_scr_spellget
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellget
popz.v

:[end]