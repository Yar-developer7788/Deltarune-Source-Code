.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_itemget_anytype (locals=0, argc=2)
:[1]
pushi.e 0
pop.v.i self.noroom
push.v arg.argument1
push.s "item"@229
cmp.s.v EQ
bf [3]

:[2]
push.v arg.argument0
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[3]
push.v arg.argument1
push.s "weapon"@231
cmp.s.v EQ
bf [5]

:[4]
push.v arg.argument0
call.i gml_Script_scr_weaponget(argc=1)
popz.v

:[5]
push.v arg.argument1
push.s "armor"@232
cmp.s.v EQ
bf [7]

:[6]
push.v arg.argument0
call.i gml_Script_scr_armorget(argc=1)
popz.v

:[7]
push.v arg.argument1
push.s "key"@39
cmp.s.v EQ
bf [9]

:[8]
push.v arg.argument0
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[9]
push.v arg.argument1
push.s "money"@6941
cmp.s.v EQ
bf [11]

:[10]
push.v global.gold
push.v arg.argument0
add.v.v
pop.v.v global.gold

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_itemget_anytype
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemget_anytype
popz.v

:[end]