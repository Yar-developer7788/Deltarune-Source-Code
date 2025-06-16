.localvar 2 arguments

:[0]
b [11]

> gml_Script_button1_p (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 4
push.v [array]self.input_pressed
conv.v.b
bf [4]

:[2]
pushi.e 1
conv.i.v
ret.v

:[3]
b [10]

:[4]
pushi.e -5
pushi.e 7
push.v [array]self.input_pressed
conv.v.b
bf [7]

:[5]
pushi.e 1
conv.i.v
ret.v

:[6]
b [10]

:[7]
push.i 32775
conv.i.v
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [10]

:[8]
push.v 1112.gamepad_shoulderlb_reassign
conv.v.b
not.b
bf [10]

:[9]
pushi.e 1
conv.i.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_button1_p
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.button1_p
popz.v

:[end]