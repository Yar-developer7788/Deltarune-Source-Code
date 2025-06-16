.localvar 2 arguments

:[0]
b [6]

> gml_Script_c_cmd_x (locals=0, argc=7)
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
push.i 43092785
setowner.e
push.v arg.argument0
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command
push.i 43092710
setowner.e
push.v arg.argument1
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg1
push.i 43092711
setowner.e
push.v arg.argument2
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg2
push.i 43092712
setowner.e
push.v arg.argument3
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg3
push.i 43092713
setowner.e
push.v arg.argument4
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg4
push.i 43092714
setowner.e
push.v arg.argument5
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg5
push.i 43092715
setowner.e
push.v arg.argument6
pushi.e 898
push.v self.__cs_i
conv.v.i
pop.v.v [array]self.command_arg6
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
push.i [function]gml_Script_c_cmd_x
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_cmd_x
popz.v

:[end]