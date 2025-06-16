.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[1]
pushi.e 122
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.spriteID
pushi.e -4
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
pop.v.b self.otherfound
push.s "searching for objects that use "@14376
push.v self.spriteID
call.i sprite_get_name(argc=1)
call.i string(argc=1)
add.v.s
push.s ":"@6158
add.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushi.e -3
pushenv [8]

:[6]
push.v self.sprite_index
push.v other.spriteID
cmp.v.v EQ
bf [8]

:[7]
push.v self.object_index
call.i object_get_name(argc=1)
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushi.e 1
pop.v.b other.otherfound

:[8]
popenv [6]
push.v other.otherfound
conv.v.b
not.b
bf [end]

:[9]
push.s ""@157
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[end]