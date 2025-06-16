.localvar 2 arguments
.localvar 4413 itemgetstring 7553

:[0]
pushi.e 277
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.charcon

:[2]
popenv [1]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
pop.v.i global.typer

:[4]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_index
push.i 231251
setowner.e
push.s "obj_treasure_room_slash_Other_10_gml_14_0"@19734
conv.s.v
push.s "* (It won't open.)/%"@19735
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.itemflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_treasure_room_slash_Other_10_gml_18_0"@18067
conv.s.v
push.s "* (The chest is empty.)/%"@18068
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [9]

:[6]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.itemtype
push.v self.itemidchest
call.i gml_Script_scr_itemget_anytype_text(argc=2)
pop.v.v local.itemgetstring
push.s "obj_treasure_room_slash_Other_10_gml_65_0"@19736
conv.s.v
push.v self.itemname
push.s "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/"@19737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushloc.v local.itemgetstring
call.i gml_Script_msgnext(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.itemflag
conv.v.i
pop.v.v [array]self.flag
b [9]

:[8]
pushi.e 1
pop.v.i self.close

:[9]
push.v self.extraevent
pushi.e 1
cmp.i.v EQ
bf [15]

:[10]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 467
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 263
conv.i.v
pushi.e 520
conv.i.v
pushi.e 1200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.checkscreen
pushi.e 4
push.v self.checkscreen
pushi.e -9
pop.v.i [stacktop]self.extflag
pushi.e 10
push.v self.checkscreen
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 467
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.extraevent

:[15]
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]