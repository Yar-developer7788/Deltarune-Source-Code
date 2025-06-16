.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_weaponinfo_mine_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charweapon
call.i gml_Script_scr_weaponinfo_ch1(argc=1)
popz.v
push.i 57772422
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponname
push.i 57772423
setowner.e
push.v self.weapondesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapondesc
push.i 57772424
setowner.e
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponat
push.i 57772425
setowner.e
push.v self.weapondftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapondf
push.i 57772426
setowner.e
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponmag
push.i 57772427
setowner.e
push.v self.weaponboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponbolts
push.i 57772428
setowner.e
push.v self.weaponstyletemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponstyle
push.i 57772429
setowner.e
push.v self.weapongrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapongrazeamt
push.i 57772430
setowner.e
push.v self.weapongrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapongrazesize
push.i 57772431
setowner.e
push.v self.weaponabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponability
push.i 57772432
setowner.e
push.v self.weaponabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponabilityicon
push.i 57772433
setowner.e
push.v self.weaponicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponicon
push.i 115443431
setowner.e
push.v self.weaponattemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
pushi.e 0
popaf.e
push.i 115443433
setowner.e
push.v self.weapondftemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
pushi.e 0
popaf.e
push.i 115443435
setowner.e
push.v self.weaponmagtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
pushi.e 0
popaf.e
push.i 115443437
setowner.e
push.v self.weaponboltstemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
pushi.e 0
popaf.e
push.i 115443439
setowner.e
push.v self.weapongrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
pushi.e 0
popaf.e
push.i 115443441
setowner.e
push.v self.weapongrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
pushi.e 0
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_weaponinfo_mine_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaponinfo_mine_ch1
popz.v

:[end]