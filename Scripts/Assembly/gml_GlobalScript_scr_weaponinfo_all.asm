.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_weaponinfo_all (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 48
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.weapon
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.i 12028256
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponname
push.i 12028258
setowner.e
push.v self.weapondesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondesc
push.i 12028260
setowner.e
push.v self.wmessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage2
push.i 12028262
setowner.e
push.v self.wmessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage3
push.i 12028264
setowner.e
push.v self.wmessage4temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage4
push.i 12028266
setowner.e
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponat
push.i 12028268
setowner.e
push.v self.weapondftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondf
push.i 12028270
setowner.e
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponmag
push.i 12028272
setowner.e
push.v self.weaponboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponbolts
push.i 12027620
setowner.e
push.v self.weaponstyletemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.i 12028275
setowner.e
push.v self.weapongrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazeamt
push.i 12028277
setowner.e
push.v self.weapongrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazesize
push.i 12028279
setowner.e
push.v self.weaponchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar1
push.i 12028281
setowner.e
push.v self.weaponchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar2
push.i 12028283
setowner.e
push.v self.weaponchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar3
push.i 12028285
setowner.e
push.v self.weaponchar4temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar4
push.i 12028287
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponvalue
push.i 12028288
setowner.e
push.v self.weaponabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponability
push.i 12028290
setowner.e
push.v self.weaponabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponabilityicon
push.i 12028292
setowner.e
push.v self.weaponicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponicon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_weaponinfo_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaponinfo_all
popz.v

:[end]