.localvar 2 arguments
.localvar 6360 $$$$temp$$$$ 2020

:[0]
b [12]

> gml_Script_scr_findactor (locals=1, argc=1)
:[1]
pushi.e 898
pushenv [11]

:[2]
pushi.e -1
pop.v.i self.__foundactor
pushi.e 0
pop.v.i self._jjj

:[3]
push.v self._jjj
pushi.e 20
cmp.i.v LT
bf [10]

:[4]
pushi.e -1
push.v self._jjj
conv.v.i
push.v [array]self.actor_name
push.v arg.argument0
cmp.v.v EQ
bf [6]

:[5]
pushi.e -1
push.v self._jjj
conv.v.i
push.v [array]self.actor_id
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self._jjj
pop.v.v self.__foundactor

:[9]
push.v self._jjj
push.e 1
add.i.v
pop.v.v self._jjj
b [3]

:[10]
push.v self.__foundactor
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[11]
popenv [2]
exit.i

:[12]
push.i [function]gml_Script_scr_findactor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_findactor
popz.v

:[end]