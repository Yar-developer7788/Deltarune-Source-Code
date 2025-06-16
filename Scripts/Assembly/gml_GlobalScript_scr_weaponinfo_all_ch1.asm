.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_weaponinfo_all_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.weapon
call.i gml_Script_scr_weaponinfo_ch1(argc=1)
popz.v
push.i 57706848
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponname
push.i 57706850
setowner.e
push.v self.weapondesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondesc
push.i 57706852
setowner.e
push.v self.wmessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage2
push.i 57706854
setowner.e
push.v self.wmessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage3
push.i 57706858
setowner.e
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponat
push.i 57706860
setowner.e
push.v self.weapondftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondf
push.i 57706862
setowner.e
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponmag
push.i 57706864
setowner.e
push.v self.weaponboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponbolts
push.i 57706212
setowner.e
push.v self.weaponstyletemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.i 57706867
setowner.e
push.v self.weapongrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazeamt
push.i 57706869
setowner.e
push.v self.weapongrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazesize
push.i 57706871
setowner.e
push.v self.weaponchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar1
push.i 57706873
setowner.e
push.v self.weaponchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar2
push.i 57706875
setowner.e
push.v self.weaponchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar3
push.i 57706879
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponvalue
push.i 57706880
setowner.e
push.v self.weaponabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponability
push.i 57706882
setowner.e
push.v self.weaponabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponabilityicon
push.i 57706884
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
push.i [function]gml_Script_scr_weaponinfo_all_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaponinfo_all_ch1
popz.v

:[end]