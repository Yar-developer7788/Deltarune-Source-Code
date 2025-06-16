.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.noleave
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
bf [5]

:[4]
pushi.e 1
conv.i.v
push.s "SLIDE_TILES"@37718
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
b [6]

:[5]
pushi.e 0
conv.i.v
push.s "SLIDE_TILES"@37718
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v

:[6]
pushi.e -5
pushi.e 427
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
pushi.e 2631
conv.i.v
pushi.e 1150
conv.i.v
pushi.e 758
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.plat
push.i 998000
push.v self.plat
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 345
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leftlight
pushi.e 1
push.v self.leftlight
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.leftlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 343
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 802
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.midlight
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.midlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 343
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 842
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.midlight2
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.midlight2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 344
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 864
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rightlight
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 12
sub.i.v
push.v self.rightlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 136
conv.i.v
pushi.e 1144
conv.i.v
pushi.e 844
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.chest
pushi.e 1251
pushenv [10]

:[8]
push.v self.trigNum
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 99
pop.v.i self.con

:[10]
popenv [8]
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 22
pop.v.i 268.image_yscale

:[12]
pushi.e -5
pushi.e 352
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]