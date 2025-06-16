.localvar 2 arguments

:[0]
b [10]

> gml_Script_c_actormoveparty (locals=0, argc=1)
:[1]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_findactor(argc=1)
pop.v.v self.__mcactor
push.v self.__mcactor
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.v self.__mcactor
call.i gml_Script_c_sel(argc=1)
popz.v
push.v arg.argument0
push.v 82.y
push.v 82.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v

:[3]
pushi.e 0
pop.v.i self.__jj

:[4]
push.v self.__jj
pushi.e 2
cmp.i.v LT
bf [9]

:[5]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[6]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_scr_findactor(argc=1)
pop.v.v self.__mcactor
push.v self.__mcactor
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
push.v self.__mcactor
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
push.s "walkdirect"@54
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v

:[8]
push.v self.__jj
push.e 1
add.i.v
pop.v.v self.__jj
b [4]

:[9]
exit.i

:[10]
push.i [function]gml_Script_c_actormoveparty
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_actormoveparty
popz.v

:[end]