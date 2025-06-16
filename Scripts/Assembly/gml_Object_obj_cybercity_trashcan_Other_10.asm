.localvar 2 arguments
.localvar 20337 itemget 9238

:[0]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_cybercity_trashcan_slash_Other_10_gml_5_0"@21255
conv.s.v
push.s "* (You dug through the trash...)/"@21256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e -5
push.v self.flag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 1
pop.v.i self.image_index
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.money_amount
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.flag
conv.v.i
pop.v.v [array]self.flag
push.s "money"@6941
conv.s.v
push.v self.money_amount
call.i gml_Script_scr_itemget_anytype_text(argc=2)
pop.v.v local.itemget
push.s "obj_cybercity_trashcan_slash_Other_10_gml_16_0"@21257
conv.s.v
push.v self.money_amount
push.s "* (And found $~1!)/"@21258
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
pushloc.v local.itemget
call.i gml_Script_msgnext(argc=1)
popz.v
b [6]

:[3]
push.v self.item_id
pushi.e 0
cmp.i.v GT
bf [6]

:[4]
push.s "item"@229
conv.s.v
push.v self.item_id
call.i gml_Script_scr_itemget_anytype_text(argc=2)
pop.v.v local.itemget
push.s "obj_cybercity_trashcan_slash_Other_10_gml_23_0"@21259
conv.s.v
push.v self.itemname
push.s "* (And found a ~1!)/"@21260
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
pushloc.v local.itemget
call.i gml_Script_msgnext(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.flag
conv.v.i
pop.v.v [array]self.flag

:[6]
b [8]

:[7]
push.s "obj_cybercity_trashcan_slash_Other_10_gml_35_0"@21261
conv.s.v
push.s "* (And found trash!)/%"@21262
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[8]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]