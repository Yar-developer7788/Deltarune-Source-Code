.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_monster_actreset (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.__fj

:[2]
push.v self.__fj
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
push.i 62097897
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.canact
push.v self.__fj
conv.v.i
popaf.e
push.i 62097821
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actname
push.v self.__fj
conv.v.i
popaf.e
push.i 62097906
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actactor
push.v self.__fj
conv.v.i
popaf.e
push.i 62097909
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actdesc
push.v self.__fj
conv.v.i
popaf.e
push.i 62097817
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actcost
push.v self.__fj
conv.v.i
popaf.e
push.i 62097898
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actsimul
push.v self.__fj
conv.v.i
popaf.e
push.i 62097899
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.canactsus
push.v self.__fj
conv.v.i
popaf.e
push.i 62097900
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actnamesus
push.v self.__fj
conv.v.i
popaf.e
push.i 62097913
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actdescsus
push.v self.__fj
conv.v.i
popaf.e
push.i 62097915
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actcostsus
push.v self.__fj
conv.v.i
popaf.e
push.i 62097901
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actsimulsus
push.v self.__fj
conv.v.i
popaf.e
push.i 62097902
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.canactral
push.v self.__fj
conv.v.i
popaf.e
push.i 62097903
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actnameral
push.v self.__fj
conv.v.i
popaf.e
push.i 62097914
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actdescral
push.v self.__fj
conv.v.i
popaf.e
push.i 62097916
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actcostral
push.v self.__fj
conv.v.i
popaf.e
push.i 62097904
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actsimulral
push.v self.__fj
conv.v.i
popaf.e
push.i 62097910
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.canactnoe
push.v self.__fj
conv.v.i
popaf.e
push.i 62097911
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actnamenoe
push.v self.__fj
conv.v.i
popaf.e
push.i 62098293
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actdescnoe
push.v self.__fj
conv.v.i
popaf.e
push.i 62098294
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actcostnoe
push.v self.__fj
conv.v.i
popaf.e
push.i 62097912
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypopaf]self.actsimulnoe
push.v self.__fj
conv.v.i
popaf.e
push.v self.__fj
pushi.e 1
add.i.v
pop.v.v self.__fj
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_monster_actreset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_actreset
popz.v

:[end]