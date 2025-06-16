.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_findchar (locals=0, argc=1)
:[1]
pushi.e -1
pop.v.i self.__charslot
pushi.e 0
pop.v.i self.__findchar

:[2]
push.v self.__findchar
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.__findchar
conv.v.i
push.v [array]self.char
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
push.v self.__findchar
pop.v.v self.__charslot
b [6]

:[5]
push.v self.__findchar
push.e 1
add.i.v
pop.v.v self.__findchar
b [2]

:[6]
push.v self.__charslot
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_findchar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_findchar
popz.v

:[end]