.localvar 2 arguments

:[0]
b [20]

> gml_Script_scr_terminate_writer (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.__writerkilled
pushi.e 0
pop.v.i self.__writerkillable
pushi.e 0
pop.v.i self.__writerended
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[2]
push.v self.id
pop.v.v 64.__endcheckid
pushi.e 64
pushenv [7]

:[3]
push.v self.reachedend
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.__endcheckid
pushi.e -9
pushenv [6]

:[5]
push.v self.__writerended
push.e 1
add.i.v
pop.v.v self.__writerended

:[6]
popenv [5]

:[7]
popenv [3]
push.v self.__writerended
pushi.e 64
conv.i.v
call.i instance_number(argc=1)
cmp.v.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.__writerkillable

:[9]
b [11]

:[10]
pushi.e 1
pop.v.i self.__writerkilled

:[11]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [13]

:[12]
push.v self.__writerkillable
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 64
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 1
pop.v.i self.__writerkilled

:[18]
push.v self.__writerkilled
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_terminate_writer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_terminate_writer
popz.v

:[end]