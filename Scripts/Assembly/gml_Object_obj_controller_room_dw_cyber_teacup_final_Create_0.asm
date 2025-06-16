.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 64
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [14]

:[4]
pushi.e 1150
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1
conv.i.v
push.s "SLIDE_DECOR"@37732
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "SLIDE_TILES"@37718
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "SLIDE_TILES_Overlay"@37733
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 143
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 343
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[9]
pushi.e 343
pushenv [12]

:[10]
push.v self.x
pushi.e 2840
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.visible

:[12]
popenv [10]

:[13]
b [end]

:[14]
pushi.e 105
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 0
conv.i.v
push.s "SLIDE_DECOR"@37732
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "SLIDE_TILES"@37718
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "SLIDE_TILES_Overlay"@37733
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 343
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[17]
pushi.e 343
pushenv [20]

:[18]
push.v self.x
pushi.e 2840
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.visible

:[20]
popenv [18]

:[end]