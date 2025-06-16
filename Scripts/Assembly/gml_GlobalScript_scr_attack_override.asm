.localvar 2 arguments
.localvar 11845 __attackdebug 3494
.localvar 11851 __screensize 3495

:[0]
b [35]

> gml_Script_scr_attack_override (locals=2, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__attackdebug
push.v arg.argument1
pushi.e 10
cmp.i.v GT
bf [3]

:[2]
pushi.e 10
pop.v.i arg.argument1

:[3]
pushi.e 110
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 189
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e -1
pop.v.i local.__attackdebug
push.v arg.argument2
push.s " attack randomized."@11846
add.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
b [24]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
push.v arg.argument1
cmp.v.v LT
bf [16]

:[10]
push.v self.i
call.i string(argc=1)
call.i ord(argc=1)
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [12]

:[11]
pushi.e 96
push.v self.i
add.v.i
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v self.i
pop.v.v local.__attackdebug

:[15]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[16]
push.v arg.argument1
pop.v.v self.i

:[17]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [24]

:[18]
push.v self.i
call.i string(argc=1)
call.i ord(argc=1)
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [20]

:[19]
pushi.e 96
push.v self.i
add.v.i
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.v arg.argument2
push.s " does not have an attack no. "@11847
add.s.v
push.v self.i
call.i string(argc=1)
add.v.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[23]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [17]

:[24]
pushloc.v local.__attackdebug
push.v arg.argument0
cmp.v.v NEQ
bf [26]

:[25]
pushloc.v local.__attackdebug
pushi.e -1
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v arg.argument2
push.s " attack set to no. "@11848
add.s.v
pushloc.v local.__attackdebug
call.i string(argc=1)
add.v.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[29]
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[30]
call.i window_get_height(argc=0)
pushi.e 480
cmp.i.v EQ
bf [32]

:[31]
call.i display_get_height(argc=0)
pushi.e 480
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.__screensize
pushi.e 480
pushloc.v local.__screensize
mul.v.i
pushi.e 640
pushloc.v local.__screensize
mul.v.i
call.i window_set_size(argc=2)
popz.v
b [33]

:[32]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i window_set_size(argc=2)
popz.v

:[33]
pushloc.v local.__attackdebug
ret.v

:[34]
exit.i

:[35]
push.i [function]gml_Script_scr_attack_override
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_attack_override
popz.v

:[end]