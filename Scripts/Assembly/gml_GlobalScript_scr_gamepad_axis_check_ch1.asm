.localvar 2 arguments

:[0]
b [15]

> gml_Script_scr_gamepad_axis_check_ch1 (locals=0, argc=2)
:[1]
pushi.e 0
pop.v.i self.__returnvalue
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.i 32786
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
cmp.v.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.__returnvalue

:[4]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.i 32785
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
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.i 32786
conv.i.v
push.v arg.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
neg.v
cmp.v.v LTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.__returnvalue

:[10]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [13]

:[11]
push.i 32785
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
push.v self.__returnvalue
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_scr_gamepad_axis_check_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamepad_axis_check_ch1
popz.v

:[end]