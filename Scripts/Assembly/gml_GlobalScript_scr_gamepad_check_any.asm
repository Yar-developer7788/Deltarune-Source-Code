.localvar 2 arguments
.localvar 9568 any_input 1751
.localvar 107 i 1752

:[0]
b [16]

> gml_Script_scr_gamepad_check_any (locals=2, argc=0)
:[1]
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [4]

:[2]
pushi.e 0
conv.b.v
ret.v

:[3]
b [14]

:[4]
pushi.e 0
pop.v.b local.any_input
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [9]

:[6]
pushloc.v local.i
push.v 1112.gamepad_id
call.i gml_Script_scr_gamepad_axis_check(argc=2)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.b local.any_input
b [9]

:[8]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [5]

:[9]
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [14]

:[11]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.b local.any_input
b [14]

:[13]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [10]

:[14]
pushloc.v local.any_input
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script_scr_gamepad_check_any
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamepad_check_any
popz.v

:[end]