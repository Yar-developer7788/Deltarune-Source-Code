.localvar 2 arguments
.localvar 6718 legacy 1008
.localvar 6565 __i 1009
.localvar 6719 __itemcount 1010

:[0]
b [25]

> gml_Script_scr_armorget (locals=3, argc=1)
:[1]
pushi.e 0
pop.v.i self.noroom
pushi.e 0
pop.v.i local.legacy
pushi.e 0
pop.v.i local.__i
pushloc.v local.legacy
pushi.e 0
cmp.i.v EQ
bf [16]

:[2]
pushi.e 0
pop.v.i local.__itemcount
push.i 11045103
setowner.e
push.v arg.argument0
pushi.e -1
pushi.e 0
pop.v.v [array]self.__armor
pushi.e 0
pop.v.i local.__i

:[3]
pushloc.v local.__i
pushi.e 48
cmp.i.v LT
bf [7]

:[4]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.armor
pushi.e -1
pushloc.v local.__itemcount
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__armor
push.v local.__itemcount
push.e 1
add.i.v
pop.v.v local.__itemcount

:[6]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [3]

:[7]
pushloc.v local.__itemcount
pushi.e 48
cmp.i.v GTE
bf [9]

:[8]
pushi.e 1
pop.v.i self.noroom
b [15]

:[9]
pushi.e 0
pop.v.i local.__i

:[10]
pushloc.v local.__i
pushi.e 48
cmp.i.v LT
bf [15]

:[11]
pushloc.v local.__i
pushloc.v local.__itemcount
cmp.v.v LTE
bf [13]

:[12]
push.i 21989126
setowner.e
pushi.e -1
pushloc.v local.__i
conv.v.i
push.v [array]self.__armor
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.armor
b [14]

:[13]
push.i 21989126
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.armor

:[14]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [10]

:[15]
b [24]

:[16]
pushloc.v local.legacy
conv.v.b
bf [24]

:[17]
pushi.e 1
pop.v.i self.loop
push.i 21989126
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 48
pop.v.v [array]self.armor

:[18]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [24]

:[19]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v arg.argument0
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.armor
b [24]

:[21]
pushloc.v local.__i
pushi.e 48
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i self.noroom
b [24]

:[23]
push.v local.__i
pushi.e 1
add.i.v
pop.v.v local.__i
b [18]

:[24]
push.i [function]gml_Script_scr_armorinfo_all
conv.i.v
call.i script_execute(argc=1)
popz.v
exit.i

:[25]
push.i [function]gml_Script_scr_armorget
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorget
popz.v

:[end]