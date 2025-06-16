.localvar 2 arguments
.localvar 6565 __i 878
.localvar 376 loop 879
.localvar 6374 __j 882

:[0]
b [14]

> gml_Script_scr_itemget (locals=3, argc=1)
:[1]
pushi.e 0
pop.v.i local.__i
pushi.e 1
pop.v.i local.loop
pushi.e 0
pop.v.i self.noroom
pushi.e 0
pop.v.i self._pocketed
pushi.e 0
pop.v.i self._noroominventory
push.i 18056963
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.item

:[2]
pushloc.v local.loop
pushi.e 1
cmp.i.v EQ
bf [13]

:[3]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v arg.argument0
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.item
b [13]

:[5]
pushloc.v local.__i
pushi.e 12
cmp.i.v EQ
bf [12]

:[6]
pushi.e 1
pop.v.i self._noroominventory
pushi.e 1
pop.v.i self.noroom
pushi.e 0
pop.v.i local.__j

:[7]
pushloc.v local.__j
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [11]

:[8]
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.pocketitem
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.s "Placed in pocket :"@6588
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.i 18056967
setowner.e
push.v arg.argument0
pushi.e -5
pushloc.v local.__j
conv.v.i
pop.v.v [array]self.pocketitem
pushi.e 1
pop.v.i self._pocketed
pushi.e 0
pop.v.i self.noroom
b [11]

:[10]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [7]

:[11]
b [13]

:[12]
push.v local.__i
pushi.e 1
add.i.v
pop.v.v local.__i
b [2]

:[13]
push.i [function]gml_Script_scr_iteminfo_all
conv.i.v
call.i script_execute(argc=1)
popz.v
push.s "noroom="@6590
push.v self.noroom
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "_pocketed="@6591
push.v self._pocketed
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "_noroominventory="@6592
push.v self._noroominventory
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
exit.i

:[14]
push.i [function]gml_Script_scr_itemget
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemget
popz.v

:[end]