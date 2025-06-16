.localvar 2 arguments
.localvar 376 loop 1015

:[0]
b [9]

> gml_Script_scr_armorremove (locals=1, argc=1)
:[1]
pushi.e 0
pop.v.i self.__i
pushi.e 1
pop.v.i local.loop
pushglb.v global.armor
call.i array_length_1d(argc=1)
pop.v.v self.__inventorysize

:[2]
pushloc.v local.loop
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.armor
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
push.i 22120198
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
pop.v.v [array]self.armor
b [8]

:[5]
push.v self.__i
push.v self.__inventorysize
cmp.v.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i local.loop
b [8]

:[7]
push.v self.__i
pushi.e 1
add.i.v
pop.v.v self.__i
b [2]

:[8]
push.i [function]gml_Script_scr_armorinfo_all
conv.i.v
call.i script_execute(argc=1)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_armorremove
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorremove
popz.v

:[end]