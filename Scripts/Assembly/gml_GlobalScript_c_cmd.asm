.localvar 2 arguments

:[0]
b [6]

> gml_Script_c_cmd (locals=0, argc=5)
:[1]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
push.v 898.maximum_command
pushi.e 1
sub.i.v
pop.v.v self.__cs_i
push.i 42961713
setowner.e
push.v arg.argument0
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command
push.i 42961638
setowner.e
push.v arg.argument1
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg1
push.i 42961639
setowner.e
push.v arg.argument2
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg2
push.i 42961640
setowner.e
push.v arg.argument3
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg3
push.i 42961641
setowner.e
push.v arg.argument4
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg4
pushi.e 898
pushenv [4]

:[3]
push.v self.maximum_command
push.e 1
add.i.v
pop.v.v self.maximum_command

:[4]
popenv [3]

:[5]
exit.i

:[6]
push.i [function]gml_Script_c_cmd
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_cmd
popz.v

:[end]