.localvar 2 arguments
.localvar 332 armorconverted 237

:[0]
b [33]

> gml_Script_scr_become_light (locals=1, argc=0)
:[1]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v

:[3]
pushi.e 2
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v

:[6]
b [8]

:[7]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v

:[8]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [12]

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
b [13]

:[12]
pushi.e 11
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v

:[13]
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
bf [15]

:[14]
pushi.e 1
pop.v.i global.lhp

:[15]
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v GT
bf [17]

:[16]
pushglb.v global.lmaxhp
pop.v.v global.lhp

:[17]
pushi.e 1
pop.v.i global.lwstrength
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
pop.v.i global.lweapon

:[19]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 5
cmp.i.v EQ
bf [21]

:[20]
pushi.e 6
pop.v.i global.lweapon

:[21]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 8
cmp.i.v EQ
bf [23]

:[22]
pushi.e 7
pop.v.i global.lweapon

:[23]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 14
cmp.i.v EQ
bf [25]

:[24]
pushi.e 12
pop.v.i global.lweapon

:[25]
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 16
cmp.i.v EQ
bf [27]

:[26]
pushi.e 13
pop.v.i global.lweapon

:[27]
pushi.e 0
pop.v.i local.armorconverted
pushi.e 14
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_armorcheck_equipped(argc=2)
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
pushi.e 1
pop.v.i local.armorconverted
pushi.e 14
pop.v.i global.larmor

:[29]
pushloc.v local.armorconverted
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i global.ladef
b [32]

:[31]
pushi.e 0
pop.v.i global.ladef

:[32]
pushi.e 0
pop.v.i global.darkzone
exit.i

:[33]
push.i [function]gml_Script_scr_become_light
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_become_light
popz.v

:[end]