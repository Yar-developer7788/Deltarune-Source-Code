.localvar 2 arguments
.localvar 10320 __actnamecheck 2450
.localvar 10321 __monstertype 2451

:[0]
b [48]

> gml_Script_scr_spellmenu_setup (locals=2, argc=0)
:[1]
pushi.e 0
pop.v.i local.__actnamecheck
pushi.e -5
pushi.e 0
push.v [array]self.monstertype
pop.v.v local.__monstertype
pushi.e 1
pop.v.i self.__i

:[2]
push.v self.__i
pushi.e 3
cmp.i.v LT
bf [9]

:[3]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.monstertype
pushloc.v local.__monstertype
cmp.v.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i local.__actnamecheck

:[8]
push.v self.__i
push.e 1
add.i.v
pop.v.v self.__i
b [2]

:[9]
pushi.e 0
pop.v.i self.__i

:[10]
push.v self.__i
pushi.e 3
cmp.i.v LT
bf [41]

:[11]
pushi.e 0
pop.v.i self.__fj

:[12]
push.v self.__fj
pushi.e 6
cmp.i.v LT
bf [40]

:[13]
push.i 62884314
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__fj
conv.v.i
popaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [18]

:[14]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.canact
push.v self.__fj
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e -1
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__fj
conv.v.i
popaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.battleactcount
push.v self.__fj
pushi.e 1
add.i.v
cmp.v.v LT
bf [17]

:[16]
push.i 62884743
setowner.e
push.v self.__fj
pushi.e 1
add.i.v
pushi.e -5
push.v self.__i
conv.v.i
pop.v.v [array]self.battleactcount

:[17]
push.i 62884744
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actcost
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.__fj
conv.v.i
popaf.e
push.i 62884745
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actname
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e
push.i 62884746
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actdesc
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.__fj
conv.v.i
popaf.e
push.i 62884747
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.__fj
conv.v.i
popaf.e
push.i 62884748
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellspecial
push.v self.__fj
conv.v.i
popaf.e

:[18]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [25]

:[19]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.canactsus
push.v self.__fj
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [25]

:[20]
push.i 62884314
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__fj
conv.v.i
popaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.battleactcount
push.v self.__fj
pushi.e 1
add.i.v
cmp.v.v LT
bf [22]

:[21]
push.i 62884743
setowner.e
push.v self.__fj
pushi.e 1
add.i.v
pushi.e -5
push.v self.__i
conv.v.i
pop.v.v [array]self.battleactcount

:[22]
push.i 62884744
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actcostsus
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.__fj
conv.v.i
popaf.e
push.i 62884745
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actnamesus
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e
pushloc.v local.__actnamecheck
conv.v.b
bf [24]

:[23]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1053_0"@7406
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e

:[24]
push.i 62884746
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actdescsus
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.__fj
conv.v.i
popaf.e
push.i 62884747
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.__fj
conv.v.i
popaf.e
push.i 62884748
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellspecial
push.v self.__fj
conv.v.i
popaf.e

:[25]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [32]

:[26]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.canactral
push.v self.__fj
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [32]

:[27]
push.i 62884314
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__fj
conv.v.i
popaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.battleactcount
push.v self.__fj
pushi.e 1
add.i.v
cmp.v.v LT
bf [29]

:[28]
push.i 62884743
setowner.e
push.v self.__fj
pushi.e 1
add.i.v
pushi.e -5
push.v self.__i
conv.v.i
pop.v.v [array]self.battleactcount

:[29]
push.i 62884744
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actcostral
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.__fj
conv.v.i
popaf.e
push.i 62884745
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actnameral
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e
pushloc.v local.__actnamecheck
conv.v.b
bf [31]

:[30]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1057_0"@7407
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e

:[31]
push.i 62884746
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actdescral
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.__fj
conv.v.i
popaf.e
push.i 62884747
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.__fj
conv.v.i
popaf.e
push.i 62884748
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellspecial
push.v self.__fj
conv.v.i
popaf.e

:[32]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [39]

:[33]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.canactnoe
push.v self.__fj
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [39]

:[34]
push.i 62884314
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__fj
conv.v.i
popaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.battleactcount
push.v self.__fj
pushi.e 1
add.i.v
cmp.v.v LT
bf [36]

:[35]
push.i 62884743
setowner.e
push.v self.__fj
pushi.e 1
add.i.v
pushi.e -5
push.v self.__i
conv.v.i
pop.v.v [array]self.battleactcount

:[36]
push.i 62884744
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actcostnoe
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.__fj
conv.v.i
popaf.e
push.i 62884745
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actnamenoe
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e
pushloc.v local.__actnamecheck
conv.v.b
bf [38]

:[37]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1061_0"@7408
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__fj
conv.v.i
popaf.e

:[38]
push.i 62884746
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.actdescnoe
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.__fj
conv.v.i
popaf.e
push.i 62884747
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.__fj
conv.v.i
popaf.e
push.i 62884748
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellspecial
push.v self.__fj
conv.v.i
popaf.e

:[39]
push.v self.__fj
push.e 1
add.i.v
pop.v.v self.__fj
b [12]

:[40]
push.v self.__i
push.e 1
add.i.v
pop.v.v self.__i
b [10]

:[41]
call.i gml_Script_scr_spellinfo_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.__i

:[42]
push.v self.__i
pushi.e 3
cmp.i.v LT
bf [47]

:[43]
pushi.e 0
pop.v.i self.__fj

:[44]
push.v self.__fj
pushi.e 12
cmp.i.v LT
bf [46]

:[45]
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.battleactcount
push.v self.__fj
add.v.v
pop.v.v self.__ib
push.i 62884314
setowner.e
pushi.e -5
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spell
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.__ib
conv.v.i
popaf.e
push.i 62884744
setowner.e
pushi.e -5
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.__ib
conv.v.i
popaf.e
push.i 62884745
setowner.e
pushi.e -5
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spellnameb
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.__ib
conv.v.i
popaf.e
push.i 62884746
setowner.e
pushi.e -5
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spelldescb
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.__ib
conv.v.i
popaf.e
push.i 62884747
setowner.e
pushi.e -5
pushi.e -5
push.v self.__i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spelltarget
push.v self.__fj
conv.v.i
pushaf.e
pushi.e -5
push.v self.__i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.__ib
conv.v.i
popaf.e
push.v self.__fj
push.e 1
add.i.v
pop.v.v self.__fj
b [44]

:[46]
push.v self.__i
push.e 1
add.i.v
pop.v.v self.__i
b [42]

:[47]
exit.i

:[48]
push.i [function]gml_Script_scr_spellmenu_setup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellmenu_setup
popz.v

:[end]