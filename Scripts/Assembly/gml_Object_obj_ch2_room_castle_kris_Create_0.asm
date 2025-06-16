.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 394
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 105
conv.i.v
pushi.e 224
conv.i.v
pushi.e 128
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.icee_cushion
pushi.e 2906
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 97000
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.depth

:[2]
pushi.e -5
pushi.e 106
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 133
conv.i.v
pushi.e 386
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.moss_readable
pushi.e 3129
conv.i.v
pushi.e 366
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.moss
push.v self.moss
pushi.e -9
pushenv [5]

:[4]
push.i 900000
pop.v.i self.depth

:[5]
popenv [4]

:[6]
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [10]

:[7]
pushi.e 3301
conv.i.v
pushi.e 108
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.trash
push.v self.trash
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
popenv [8]
b [end]

:[10]
pushi.e 1195
conv.i.v
pushi.e 108
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.manual_stand
push.v self.manual_stand
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]

:[end]