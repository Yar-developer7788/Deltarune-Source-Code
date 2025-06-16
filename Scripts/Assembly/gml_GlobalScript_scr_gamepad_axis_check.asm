.localvar 2 arguments

:[0]
b [18]

> gml_Script_scr_gamepad_axis_check (locals=0, argc=2)
:[1]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 1134.axis_value
b [4]

:[3]
push.d 0.4
conv.d.v

:[4]
pop.v.v self.axis_value
pushi.e 0
pop.v.i self.__returnvalue
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.i 32786
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
cmp.v.v GTE
bf [7]

:[6]
pushi.e 1
pop.v.i self.__returnvalue

:[7]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.i 32785
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
cmp.v.v GTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.__returnvalue

:[10]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [13]

:[11]
push.i 32786
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
neg.v
cmp.v.v LTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.__returnvalue

:[13]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [16]

:[14]
push.i 32785
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
neg.v
cmp.v.v LTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.__returnvalue

:[16]
push.v self.__returnvalue
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_gamepad_axis_check
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamepad_axis_check
popz.v

:[end]