.localvar 2 arguments

:[0]
b [35]

> gml_Script_scr_litemdesc (locals=0, argc=1)
:[1]
push.i 5736275
setowner.e
push.s "scr_litemdesc_slash_scr_litemdesc_gml_1_0"@639
conv.s.v
push.s "* Your eyesight became blurry./%"@640
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [17]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [18]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [19]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [20]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [21]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [22]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [25]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [26]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [27]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [28]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [29]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [30]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [31]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [32]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [33]

:[16]
b [34]

:[17]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_5_0"@641
conv.s.v
push.s "* Your heartbeat quickened./%"@642
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[18]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_8_0"@643
conv.s.v
push.s "* \"Hot Chocolate\" - Topped with home-made marshmallows in the shape of bunnies./%"@644
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[19]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_11_0"@645
conv.s.v
push.s "* \"Pencil\" - Weapon 1 AT&* Mightier than a sword?&* Maybe equal at best./%"@646
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[20]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_14_0"@647
conv.s.v
push.s "* \"Bandage\" - Heals 10 HP&* It has cartoon characters on it./%"@648
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[21]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_17_0"@649
conv.s.v
push.s "* \"Bouquet\" - A bouquet of beautiful flowers in many colors./"@650
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_18_0"@651
conv.s.v
push.s "* Perhaps it could be offered to someone./%"@652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [34]

:[22]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_21_0"@653
conv.s.v
push.s "* \"Ball of Junk\" - A small ball of accumulated things in your pocket./%"@654
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
conv.v.b
bf [24]

:[23]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_25_0"@656
conv.s.v
push.s "* \"Ball of Junk\" - A small ball of accumulated things in your pocket./"@657
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_26_0"@658
conv.s.v
push.s "* It smells like scratch'n'sniff marshmallow stickers./%"@659
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[24]
b [34]

:[25]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_30_0"@660
conv.s.v
push.s "* \"Halloween Pencil\" - Weapon 1 AT&* Orange with black bats on it./%"@661
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[26]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_33_0"@662
conv.s.v
push.s "* \"Lucky Pencil\" - Weapon 1 AT&* Covered in green clovers and rainbows./%"@663
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[27]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_36_0"@664
conv.s.v
push.s "* \"Egg\" - Not too important^1, not too unimportant./%"@665
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[28]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_39_0"@666
conv.s.v
push.s "* \"Cards\" - The Jack of Spades^1, and the Rules Card./%"@667
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[29]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_42_0"@668
conv.s.v
push.s "* \"Box of Heart Candy\" - It's not yours^1. Will that stop you?/%"@669
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[30]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_45_0"@670
conv.s.v
push.s "* There is a small shard of something in your pocket./"@671
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_46_0"@672
conv.s.v
push.s "* It feels like glass, but.../%"@673
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [34]

:[31]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_49_0"@674
conv.s.v
push.s "* \"Eraser\" - Weapon 1 AT&* Pink^1, it bounces when thrown on the ground./%"@675
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[32]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_52_0"@676
conv.s.v
push.s "* \"Mechanical Pencil\" - 1 AT&* It's tempting to click it repeatedly./%"@677
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[33]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_55_0"@678
conv.s.v
push.s "* \"Wristwatch\" - Armor 1 DF&* Maybe an expensive antique.&* Stuck before half past noon./%"@679
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [34]

:[34]
popz.v
exit.i

:[35]
push.i [function]gml_Script_scr_litemdesc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemdesc
popz.v

:[end]