.localvar 2 arguments

:[0]
b [22]

> gml_Script_scr_enemyblcon (locals=0, argc=3)
:[1]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 64
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mywriter
push.v self.mywriter
ret.v

:[3]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
push.v self.myblcon
ret.v

:[5]
push.v arg.argument2
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 2233
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[7]
push.v arg.argument2
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 2230
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[9]
push.v arg.argument2
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 1594
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[11]
push.v arg.argument2
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 1594
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[13]
push.v arg.argument2
pushi.e 6
cmp.i.v EQ
bf [15]

:[14]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 1594
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[15]
push.v arg.argument2
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 2232
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[17]
push.v arg.argument2
pushi.e 8
cmp.i.v EQ
bf [19]

:[18]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 2231
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[19]
push.v arg.argument2
pushi.e 10
cmp.i.v EQ
bf [21]

:[20]
pushi.e 870
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 2230
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.myblcon
pushi.e -9
pop.v.i [stacktop]self.auto_length
push.v self.myblcon
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scr_enemyblcon
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enemyblcon
popz.v

:[end]