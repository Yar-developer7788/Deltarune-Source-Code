.localvar 2 arguments
.localvar 9408 os_map 1731
.localvar 9410 ps4_confirm_button 1733
.localvar 9412 mapsize 1734
.localvar 39 key 1735
.localvar 107 i 1736

:[0]
b [21]

> gml_Script_scr_controls_default (locals=5, argc=0)
:[1]
push.i 32769
pop.v.i global.button0
push.i 32770
pop.v.i global.button1
push.i 32772
pop.v.i global.button2
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [14]

:[2]
call.i os_get_info(argc=0)
pop.v.v local.os_map
pushbltn.v builtin.undefined
pop.v.v local.ps4_confirm_button
pushloc.v local.os_map
pushi.e -1
cmp.i.v NEQ
bf [10]

:[3]
pushloc.v local.os_map
call.i ds_map_size(argc=1)
pop.v.v local.mapsize
pushloc.v local.os_map
call.i ds_map_find_first(argc=1)
pop.v.v local.key
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushloc.v local.mapsize
pushi.e 1
sub.i.v
cmp.v.v LT
bf [9]

:[5]
pushloc.v local.key
push.s "enter_button_assign"@9414
cmp.s.v EQ
bf [7]

:[6]
pushloc.v local.key
pushloc.v local.os_map
call.i ds_map_find_value(argc=2)
pop.v.v local.ps4_confirm_button
b [8]

:[7]
pushloc.v local.key
pushloc.v local.os_map
call.i ds_map_find_next(argc=2)
pop.v.v local.key

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[9]
pushloc.v local.os_map
call.i ds_map_destroy(argc=1)
popz.v

:[10]
pushloc.v local.ps4_confirm_button
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.i 32770
pop.v.i global.button0
push.i 32769
pop.v.i global.button1
b [13]

:[12]
push.i 32769
pop.v.i global.button0
push.i 32770
pop.v.i global.button1

:[13]
push.i 32772
pop.v.i global.button2
b [16]

:[14]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [16]

:[15]
push.i 32770
pop.v.i global.button0
push.i 32769
pop.v.i global.button1
push.i 32772
pop.v.i global.button2

:[16]
pushglb.v global.button0
pop.v.v global.default_button0
pushglb.v global.button1
pop.v.v global.default_button1
pushglb.v global.button2
pop.v.v global.default_button2
push.i 38636172
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.input_k
pushi.e 39
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.input_k
pushi.e 38
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.input_k
pushi.e 37
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.input_k
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.input_k
pushi.e 88
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.input_k
pushi.e 67
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.input_k
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_k
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_k
pushi.e 17
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_k
push.i 38635191
setowner.e
push.i 32782
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.input_g
push.i 32784
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.input_g
push.i 32781
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.input_g
push.i 32783
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.input_g
pushglb.v global.button0
pushi.e -5
pushi.e 4
pop.v.v [array]self.input_g
pushglb.v global.button1
pushi.e -5
pushi.e 5
pop.v.v [array]self.input_g
pushglb.v global.button2
pushi.e -5
pushi.e 6
pop.v.v [array]self.input_g
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_g
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_g
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_g
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 1112
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[18]
pushi.e 1112
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.gamepad_shoulderlb_reassign

:[20]
popenv [19]
exit.i

:[21]
push.i [function]gml_Script_scr_controls_default
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_controls_default
popz.v

:[end]