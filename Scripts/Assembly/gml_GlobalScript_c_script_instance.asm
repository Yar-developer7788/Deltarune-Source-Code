.localvar 2 arguments

:[0]
b [10]

> gml_Script_c_script_instance (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.d -3.14
conv.d.v
push.d -3.14
conv.d.v
push.d -3.14
conv.d.v
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "script"@9790
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[3]
pushbltn.v builtin.argument_count
pushi.e 4
cmp.i.v EQ
bf [5]

:[4]
push.d -3.14
conv.d.v
push.d -3.14
conv.d.v
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "script"@9790
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[5]
pushbltn.v builtin.argument_count
pushi.e 5
cmp.i.v EQ
bf [7]

:[6]
push.d -3.14
conv.d.v
pushi.e -15
pushi.e 4
push.v [array]self.argument
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "script"@9790
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[7]
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v EQ
bf [9]

:[8]
pushi.e -15
pushi.e 5
push.v [array]self.argument
pushi.e -15
pushi.e 4
push.v [array]self.argument
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "script"@9790
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_c_script_instance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_script_instance
popz.v

:[end]