.localvar 2 arguments
.localvar 4413 itemgetstring 1222
.localvar 6947 _itemtype 1226
.localvar 6948 _itemid 1228

:[0]
b [20]

> gml_Script_scr_itemget_anytype_text (locals=3, argc=0)
:[1]
pushi.e 0
pop.v.i self.noroom
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i gml_Script_scr_itemget_anytype(argc=2)
popz.v
push.s ""@157
pop.v.s local.itemgetstring
push.s "NULL"@6944
pop.v.s self.itemname
push.s "NULL"@6944
pop.v.s self.itemtypename
pushbltn.v builtin.argument1
pop.v.v local._itemtype
pushbltn.v builtin.argument0
pop.v.v local._itemid
pushloc.v local._itemtype
push.s "armor"@232
cmp.s.v EQ
bf [3]

:[2]
pushloc.v local._itemid
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pop.v.v self.itemname
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_22_0"@6949
conv.s.v
push.s "ARMORs"@6950
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename
b [5]

:[3]
pushloc.v local._itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [5]

:[4]
pushloc.v local._itemid
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.v self.weaponnametemp
pop.v.v self.itemname
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_29_0"@6951
conv.s.v
push.s "WEAPONs"@6952
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename

:[5]
pushloc.v local._itemtype
push.s "item"@229
cmp.s.v EQ
bf [8]

:[6]
pushloc.v local._itemid
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.v self.itemnameb
pop.v.v self.itemname
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_36_0"@6953
conv.s.v
push.s "ITEMs"@6954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename
push.v self._pocketed
conv.v.b
bf [8]

:[7]
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_38_0"@6955
conv.s.v
push.s "STORAGE"@6956
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename

:[8]
pushloc.v local._itemtype
push.s "key"@39
cmp.s.v EQ
bf [10]

:[9]
pushloc.v local._itemid
call.i gml_Script_scr_keyiteminfo(argc=1)
popz.v
push.v self.tempkeyitemname
pop.v.v self.itemname
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_44_0"@6959
conv.s.v
push.s "KEY ITEMs"@6960
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename

:[10]
pushloc.v local._itemtype
push.s "money"@6941
cmp.s.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.noroom
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_51_0"@6961
conv.s.v
push.s "MONEY HOLE"@6962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemtypename
pushloc.v local._itemid
call.i string(argc=1)
push.s "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_52_0"@6963
conv.s.v
push.s " Dark Dollars"@6964
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
pop.v.v self.itemname

:[12]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_treasure_room_slash_Other_10_gml_76_0"@6965
conv.s.v
push.v self.itemtypename
push.v self.itemname
push.s "* (\\cY~1\\cW was added to your \\cY~2\\cW.)"@6966
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pop.v.v local.itemgetstring
b [15]

:[14]
push.s "obj_treasure_room_slash_Other_10_gml_83_0"@6967
conv.s.v
push.v self.itemtypename
push.v self.itemname
push.s "* (You have too many \\cY~2\\cW to take \\cY~1\\c0.)"@6968
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pop.v.v local.itemgetstring

:[15]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v GTE
bf [17]

:[16]
push.v local.itemgetstring
pushi.e -15
pushi.e 2
push.v [array]self.argument
add.v.v
pop.v.v local.itemgetstring
b [18]

:[17]
push.v local.itemgetstring
push.s "/%"@4449
add.s.v
pop.v.v local.itemgetstring

:[18]
pushloc.v local.itemgetstring
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_itemget_anytype_text
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemget_anytype_text
popz.v

:[end]