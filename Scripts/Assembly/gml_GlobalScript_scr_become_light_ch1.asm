.localvar 2 arguments

:[0]
b [22]

> gml_Script_scr_become_light_ch1 (locals=0, argc=0)
:[1]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemcheck_ch1(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemget_ch1(argc=1)
popz.v

:[3]
pushi.e 2
conv.i.v
call.i gml_Script_scr_keyitemcheck_ch1(argc=1)
conv.v.b
bf [6]

:[4]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck_ch1(argc=1)
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemget_ch1(argc=1)
popz.v

:[6]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck_ch1(argc=1)
conv.v.b
bf [10]

:[7]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemcheck_ch1(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemget_ch1(argc=1)
popz.v

:[9]
b [11]

:[10]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemremove_ch1(argc=1)
popz.v

:[11]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
div.v.v
call.i ceil(argc=1)
pushglb.v global.lmaxhp
mul.v.v
pop.v.v global.lhp
pushglb.v global.lhp
pushi.e 1
cmp.i.v LT
bf [13]

:[12]
pushi.e 1
pop.v.i global.lhp

:[13]
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v GT
bf [15]

:[14]
pushglb.v global.lmaxhp
pop.v.v global.lhp

:[15]
pushi.e 1
pop.v.i global.lwstrength
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2
pop.v.i global.lweapon

:[17]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 6
pop.v.i global.lweapon

:[19]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
pushi.e 7
pop.v.i global.lweapon

:[21]
pushi.e 0
pop.v.i global.darkzone
exit.i

:[22]
push.i [function]gml_Script_scr_become_light_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_become_light_ch1
popz.v

:[end]