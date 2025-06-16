.localvar 2 arguments
.localvar 9424 _control 1743
.localvar 9434 left_bracket 1744
.localvar 9436 right_bracket 1745

:[0]
b [29]

> gml_Script_scr_get_input_name (locals=3, argc=1)
:[1]
push.s "[?]"@9423
pop.v.s local._control
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
bf [19]

:[5]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.input_g
pop.v.v local._control
pushloc.v local._control
push.i 32784
cmp.i.v EQ
bf [7]

:[6]
push.s "\\*D  "@9425
conv.s.v
ret.v

:[7]
pushloc.v local._control
push.i 32783
cmp.i.v EQ
bf [9]

:[8]
push.s "\\*A  "@9426
conv.s.v
ret.v

:[9]
pushloc.v local._control
push.i 32781
cmp.i.v EQ
bf [11]

:[10]
push.s "\\*W  "@9427
conv.s.v
ret.v

:[11]
pushloc.v local._control
push.i 32782
cmp.i.v EQ
bf [13]

:[12]
push.s "\\*S  "@9428
conv.s.v
ret.v

:[13]
pushloc.v local._control
pushglb.v global.button0
cmp.v.v EQ
bf [15]

:[14]
push.s "\\*Z  "@9429
conv.s.v
ret.v

:[15]
pushloc.v local._control
pushglb.v global.button1
cmp.v.v EQ
bf [17]

:[16]
push.s "\\*X  "@9430
conv.s.v
ret.v

:[17]
pushloc.v local._control
pushglb.v global.button2
cmp.v.v EQ
bf [19]

:[18]
push.s "\\*C  "@9431
conv.s.v
ret.v

:[19]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [21]

:[20]
push.s "["@9433
conv.s.v
b [22]

:[21]
push.s "["@9433
conv.s.v

:[22]
pop.v.v local.left_bracket
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [24]

:[23]
push.s "]"@9435
conv.s.v
b [25]

:[24]
push.s "]"@9435
conv.s.v

:[25]
pop.v.v local.right_bracket
pushloc.v local.left_bracket
pushi.e -5
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.input_k
conv.v.i
push.v [array]self.asc_def
add.v.v
pushloc.v local.right_bracket
add.v.v
pop.v.v local._control
pushloc.v local._control
call.i is_string(argc=1)
conv.v.b
not.b
bf [27]

:[26]
push.s "[?]"@9423
pop.v.s local._control
b [28]

:[27]
pushloc.v local._control
ret.v

:[28]
exit.i

:[29]
push.i [function]gml_Script_scr_get_input_name
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_get_input_name
popz.v

:[end]