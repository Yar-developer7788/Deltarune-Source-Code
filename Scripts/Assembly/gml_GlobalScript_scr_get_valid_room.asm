.localvar 2 arguments
.localvar 336 chapter 4001
.localvar 12166 room_index 4002
.localvar 264 plot 4004
.localvar 12323 current_room 4006
.localvar 12324 valid_rooms 4007
.localvar 173 is_valid 4009
.localvar 107 i 4010

:[0]
b [22]

> gml_Script_scr_get_valid_room (locals=7, argc=3)
:[1]
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i arg.argument2

:[3]
push.v arg.argument0
pop.v.v local.chapter
push.v arg.argument1
pop.v.v local.room_index
push.v arg.argument2
pop.v.v local.plot
pushloc.v local.plot
pushloc.v local.room_index
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v local.current_room
pushloc.v local.chapter
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 50564692
setowner.e
pushi.e 0
conv.i.v
pushi.e 337
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 156
conv.i.v
pushi.e 392
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 175
conv.i.v
pushi.e 407
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 165
conv.i.v
pushi.e 404
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 165
conv.i.v
pushi.e 395
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 156
conv.i.v
pushi.e 388
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 130
conv.i.v
pushi.e 378
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 120
conv.i.v
pushi.e 377
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 75
conv.i.v
pushi.e 371
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 75
conv.i.v
pushi.e 363
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 60
conv.i.v
pushi.e 354
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 55
conv.i.v
pushi.e 352
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 55
conv.i.v
pushi.e 349
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 42
conv.i.v
pushi.e 340
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 33
conv.i.v
pushi.e 330
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 16
conv.i.v
pushi.e 326
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 11
conv.i.v
pushi.e 321
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 11
conv.i.v
pushi.e 316
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 283
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=19)
pop.v.v local.valid_rooms

:[5]
pushloc.v local.chapter
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 206
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 181
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 203
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 197
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 167
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 162
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 143
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 138
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 131
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 136
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 125
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 122
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 99
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 93
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 88
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 85
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 72
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 71
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 28
conv.i.v
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=20)
pop.v.v local.valid_rooms

:[7]
pushi.e 0
pop.v.b local.is_valid
pushi.e 0
pop.v.i local.i

:[8]
pushloc.v local.i
pushloc.v local.valid_rooms
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [12]

:[9]
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.valid_rooms
pushi.e -9
push.v [stacktop]self.room_index
cmp.v.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.b local.is_valid
push.s "1 found matching room: "@12325
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
call.i room_get_name(argc=1)
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [12]

:[11]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [8]

:[12]
pushloc.v local.is_valid
conv.v.b
not.b
bf [18]

:[13]
pushloc.v local.current_room
pushi.e -9
dup.i 4
push.v [stacktop]self.room_index
push.e 1
add.i.v
pop.i.v [stacktop]self.room_index
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushloc.v local.valid_rooms
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [18]

:[15]
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.valid_rooms
pushi.e -9
push.v [stacktop]self.room_index
cmp.v.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.b local.is_valid
push.s "2 found matching adjusted room: "@12327
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
call.i room_get_name(argc=1)
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [18]

:[17]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[18]
pushloc.v local.is_valid
conv.v.b
not.b
bf [20]

:[19]
pushloc.v local.current_room
pushi.e -9
dup.i 4
push.v [stacktop]self.room_index
push.e 1
sub.i.v
pop.i.v [stacktop]self.room_index
push.s "trying to load invalid room: "@12328
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
call.i room_get_name(argc=1)
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[20]
pushloc.v local.current_room
pushi.e -9
push.v [stacktop]self.room_index
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scr_get_valid_room
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_get_valid_room
popz.v
b [24]

> gml_Script_scr_valid_room (locals=0, argc=2)
:[23]
push.v arg.argument0
pop.v.v self.room_index
push.v arg.argument1
pop.v.v self.plot
exit.i

:[24]
push.i [function]gml_Script_scr_valid_room
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_valid_room
popz.v
b [26]

> gml_Script_scr_add_valid_room (locals=0, argc=3)
:[25]
exit.i

:[26]
push.i [function]gml_Script_scr_add_valid_room
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_add_valid_room
popz.v

:[end]