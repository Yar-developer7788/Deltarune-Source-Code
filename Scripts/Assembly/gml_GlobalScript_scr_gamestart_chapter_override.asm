.localvar 2 arguments
.localvar 12274 ch1_egg_check 3944

:[0]
b [12]

> gml_Script_scr_gamestart_chapter_override (locals=1, argc=0)
:[1]
pushi.e 0
pop.v.i global.plot
push.i 98404046
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
pushi.e 2
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pop.v.v local.ch1_egg_check
pushloc.v local.ch1_egg_check
conv.v.b
not.b
bf [5]

:[2]
pushi.e -5
pushi.e 263
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.b local.ch1_egg_check
b [5]

:[4]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
popz.v
push.v self.haveit
pop.v.v local.ch1_egg_check

:[5]
push.i 98404132
setowner.e
pushloc.v local.ch1_egg_check
pushi.e -5
pushi.e 911
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 281
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v
push.i 98404131
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.phone
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.phone
pushi.e 2
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_itemremove(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[6]
pushi.e 0
pop.v.i global.darkzone
push.i 98404132
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.flag
push.d 0.85
conv.d.v
pushi.e -5
pushi.e 16
pop.v.v [array]self.flag
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 17
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 21
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 31
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 32
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.flag
pushi.e 24
conv.i.v
pushi.e -5
pushi.e 64
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 605
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 606
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 611
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 613
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 614
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 615
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 622
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 623
pop.v.v [array]self.flag
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 800
pop.v.v [array]self.flag
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 801
pop.v.v [array]self.flag
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 802
pop.v.v [array]self.flag
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 803
pop.v.v [array]self.flag
push.i 98404065
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.charweapon
push.i 98404066
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.chararmor1
push.i 98404067
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.chararmor2
push.i 98404060
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 98404059
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 98404061
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.at
push.i 98404060
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
push.i 98404059
setowner.e
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
push.i 98404061
setowner.e
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.at
push.i 98404063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.mag
push.i 98404060
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
push.i 98404059
setowner.e
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
push.i 98404061
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.at
push.i 98404063
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.mag
push.i 98404059
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.hp
push.i 98404060
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.maxhp
push.i 98404061
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.at
push.i 98404063
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.mag
push.i 98404062
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.df
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [11]

:[7]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[9]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_gamestart_chapter_override
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamestart_chapter_override
popz.v

:[end]