.localvar 2 arguments
.localvar 39 key 21
.localvar 40 is_pressed 22
.localvar 43 alt_key 25

:[0]
b [33]

> gml_Script_scr_debug_keycheck (locals=3, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.key
pushi.e 0
pop.v.b local.is_pressed
pushglb.v global.is_console
conv.v.b
bt [3]

:[2]
push.v 1112.gamepad_active
conv.v.b
b [4]

:[3]
push.e 1

:[4]
bf [25]

:[5]
pushi.e -4
pop.v.i local.alt_key
pushloc.v local.key
dup.v 0
pushi.e 113
cmp.i.v EQ
bt [14]

:[6]
dup.v 0
pushi.e 114
cmp.i.v EQ
bt [15]

:[7]
dup.v 0
pushi.e 116
cmp.i.v EQ
bt [16]

:[8]
dup.v 0
pushi.e 117
cmp.i.v EQ
bt [17]

:[9]
dup.v 0
pushi.e 119
cmp.i.v EQ
bt [18]

:[10]
dup.v 0
pushi.e 120
cmp.i.v EQ
bt [19]

:[11]
dup.v 0
pushi.e 121
cmp.i.v EQ
bt [20]

:[12]
dup.v 0
pushi.e 86
cmp.i.v EQ
bt [21]

:[13]
b [22]

:[14]
push.i 32781
pop.v.i local.alt_key
b [22]

:[15]
push.i 32784
pop.v.i local.alt_key
b [22]

:[16]
push.i 32782
pop.v.i local.alt_key
b [22]

:[17]
push.i 32783
pop.v.i local.alt_key
b [22]

:[18]
push.i 32773
pop.v.i local.alt_key
b [22]

:[19]
push.i 32775
pop.v.i local.alt_key
b [22]

:[20]
push.i 32774
pop.v.i local.alt_key
b [22]

:[21]
push.i 32777
pop.v.i local.alt_key
b [22]

:[22]
popz.v
push.i 32776
conv.i.v
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bf [25]

:[23]
pushloc.v local.alt_key
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [25]

:[24]
pushi.e 1
pop.v.b local.is_pressed

:[25]
pushloc.v local.is_pressed
conv.v.b
not.b
bf [27]

:[26]
pushglb.v global.is_console
conv.v.b
not.b
b [28]

:[27]
push.e 0

:[28]
bf [31]

:[29]
push.v arg.argument0
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [31]

:[30]
pushi.e 1
pop.v.b local.is_pressed

:[31]
pushloc.v local.is_pressed
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_scr_debug_keycheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_keycheck
popz.v

:[end]