.localvar 2 arguments
.localvar 51 _targetx 30
.localvar 53 _targety 32

:[0]
b [2]

> gml_Script_c_walktoobject (locals=2, argc=4)
:[1]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument1
add.v.v
pop.v.v local._targetx
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument2
add.v.v
pop.v.v local._targety
pushi.e 0
conv.i.v
push.v arg.argument3
pushloc.v local._targety
pushloc.v local._targetx
push.s "walkdirect"@54
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
call.i gml_Script_c_walk(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_walktoobject
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_walktoobject
popz.v
b [4]

> gml_Script_c_delaywalktoobject (locals=2, argc=5)
:[3]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument2
add.v.v
pop.v.v local._targetx
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument3
add.v.v
pop.v.v local._targety
pushi.e 0
conv.i.v
push.v arg.argument4
pushloc.v local._targety
pushloc.v local._targetx
push.s "walkdirect"@54
conv.s.v
push.v arg.argument0
push.s "delaycmd"@59
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
exit.i

:[4]
push.i [function]gml_Script_c_delaywalktoobject
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.c_delaywalktoobject
popz.v
b [6]

> gml_Script_c_walktoobject_wait (locals=0, argc=4)
:[5]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_c_walktoobject(argc=4)
popz.v
push.v arg.argument3
call.i gml_Script_c_wait(argc=1)
popz.v
exit.i

:[6]
push.i [function]gml_Script_c_walktoobject_wait
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.c_walktoobject_wait
popz.v
b [8]

> gml_Script_c_delaywalktoobject_wait (locals=0, argc=5)
:[7]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_c_delaywalktoobject(argc=5)
popz.v
push.v arg.argument0
push.v arg.argument4
add.v.v
call.i gml_Script_c_wait(argc=1)
popz.v
exit.i

:[8]
push.i [function]gml_Script_c_delaywalktoobject_wait
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.c_delaywalktoobject_wait
popz.v

:[end]