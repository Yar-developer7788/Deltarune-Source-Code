.localvar 2 arguments
.localvar 34746 buy_sign 17139
.localvar 107 i 17147

:[0]
pushi.e 0
pop.v.i self.jp
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.jp

:[2]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.berdlygift
pushi.e 0
pop.v.b self.explore
pushi.e 0
pop.v.i self.wrongexit
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.havewalker
pushi.e 3002
conv.i.v
pushi.e -161
conv.i.v
pushi.e 1312
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tentback
push.i 100000
push.v self.tentback
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 155
conv.i.v
pushi.e 32
conv.i.v
pushi.e 1312
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tent
push.i 97800
push.v self.tent
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 313
conv.i.v
pushi.e 50
conv.i.v
pushi.e 1390
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.buy_sign
pushi.e 200
pushloc.v local.buy_sign
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.b self.hit_bottles
pushi.e 0
pop.v.i self.hit_timer
pushi.e 0
pop.v.b self.susie_heal
pushi.e 0
pop.v.i self.heal_timer
pushi.e -1
pop.v.i self.heal_beam
pushi.e 0
pop.v.b self.heal_effect
pushi.e 0
pop.v.b self.box_remove_effect
pushi.e 0
pop.v.i self.box_remove_timer
pushi.e 0
pop.v.b self.susie_right
pushi.e 0
pop.v.b self.present_transform
pushi.e 0
pop.v.i self.present_timer
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushglb.v global.plot
pushi.e 95
cmp.i.v GTE
bf [10]

:[5]
pushglb.v global.plot
pushi.e 99
cmp.i.v LT
bf [9]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[8]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 60
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 100
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 140
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 99
pop.v.i self.con
pushi.e 1
pop.v.b self.explore

:[9]
b [end]

:[10]
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [13]

:[12]
push.i 173859
setowner.e
pushi.e 157
conv.i.v
pushi.e 190
conv.i.v
pushi.e 1360
pushi.e 15
pushloc.v local.i
mul.v.i
add.v.i
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.bottle
push.i 133637
setowner.e
push.i 97700
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [11]

:[13]
pushi.e 5
pop.v.i local.i

:[14]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [end]

:[15]
push.i 173859
setowner.e
pushi.e 157
conv.i.v
pushi.e 160
conv.i.v
pushi.e 1367
pushi.e 15
pushloc.v local.i
pushi.e 5
sub.i.v
mul.v.i
add.v.i
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.bottle
push.i 133637
setowner.e
push.i 97700
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[end]