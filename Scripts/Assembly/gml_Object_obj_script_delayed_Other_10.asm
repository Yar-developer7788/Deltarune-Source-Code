.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.script
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.__scipt
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
push.i 238548
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.script_arg
push.v self.target
pushi.e -9
push.v self.i
conv.v.i
pop.v.v [array]self.__scipt_arg
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.arg_count
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
push.v self.target
pushi.e -9
pushenv [7]

:[6]
push.v self.__scipt
call.i script_execute(argc=1)
popz.v

:[7]
popenv [6]

:[8]
push.v self.arg_count
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
push.v self.target
pushi.e -9
pushenv [11]

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=2)
popz.v

:[11]
popenv [10]

:[12]
push.v self.arg_count
pushi.e 2
cmp.i.v EQ
bf [16]

:[13]
push.v self.target
pushi.e -9
pushenv [15]

:[14]
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=3)
popz.v

:[15]
popenv [14]

:[16]
push.v self.arg_count
pushi.e 3
cmp.i.v EQ
bf [20]

:[17]
push.v self.target
pushi.e -9
pushenv [19]

:[18]
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=4)
popz.v

:[19]
popenv [18]

:[20]
push.v self.arg_count
pushi.e 4
cmp.i.v EQ
bf [24]

:[21]
push.v self.target
pushi.e -9
pushenv [23]

:[22]
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=5)
popz.v

:[23]
popenv [22]

:[24]
push.v self.arg_count
pushi.e 5
cmp.i.v EQ
bf [28]

:[25]
push.v self.target
pushi.e -9
pushenv [27]

:[26]
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=6)
popz.v

:[27]
popenv [26]

:[28]
push.v self.arg_count
pushi.e 6
cmp.i.v EQ
bf [32]

:[29]
push.v self.target
pushi.e -9
pushenv [31]

:[30]
pushi.e -1
pushi.e 5
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=7)
popz.v

:[31]
popenv [30]

:[32]
push.v self.arg_count
pushi.e 7
cmp.i.v EQ
bf [36]

:[33]
push.v self.target
pushi.e -9
pushenv [35]

:[34]
pushi.e -1
pushi.e 6
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 5
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=8)
popz.v

:[35]
popenv [34]

:[36]
push.v self.arg_count
pushi.e 8
cmp.i.v EQ
bf [40]

:[37]
push.v self.target
pushi.e -9
pushenv [39]

:[38]
pushi.e -1
pushi.e 7
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 6
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 5
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=9)
popz.v

:[39]
popenv [38]

:[40]
push.v self.arg_count
pushi.e 9
cmp.i.v EQ
bf [44]

:[41]
push.v self.target
pushi.e -9
pushenv [43]

:[42]
pushi.e -1
pushi.e 8
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 7
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 6
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 5
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=10)
popz.v

:[43]
popenv [42]

:[44]
push.v self.arg_count
pushi.e 10
cmp.i.v EQ
bf [end]

:[45]
push.v self.target
pushi.e -9
pushenv [47]

:[46]
pushi.e -1
pushi.e 9
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 8
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 7
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 6
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 5
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 4
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 3
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 2
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 1
push.v [array]self.__scipt_arg
pushi.e -1
pushi.e 0
push.v [array]self.__scipt_arg
push.v self.__scipt
call.i script_execute(argc=11)
popz.v

:[47]
popenv [46]

:[end]