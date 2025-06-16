.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.southcon
pushi.e 0
pop.v.b self.weird
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 346
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 340
pop.v.v [array]self.flag
pushi.e 1
pop.v.b self.weird
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 276
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 440
pop.v.i 82.x
pushi.e 690
pop.v.i 82.y
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 10
add.i.v
pushi.e 2
sub.i.v
push.v 82.x
pushi.e 6
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 20
add.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 2
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [8]

:[7]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 30
conv.i.v
call.i gml_Script_scr_fadein(argc=1)
popz.v

:[9]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v
b [14]

:[11]
pushi.e -5
pushi.e 340
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
b [14]

:[13]
pushi.e 68
conv.i.v
pushi.e 720
conv.i.v
pushi.e 839
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.southcollider
pushi.e 4
push.v self.southcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.southcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[14]
pushi.e -5
pushi.e 346
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 105
conv.i.v
pushi.e 400
conv.i.v
pushi.e 616
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bookcase_left
pushi.e 2892
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 899999
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.depth

:[16]
pushglb.v global.plot
pushi.e 160
cmp.i.v LT
bf [18]

:[17]
pushi.e 105
conv.i.v
pushi.e 400
conv.i.v
pushi.e 737
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bookcase_right
pushi.e 2892
push.v self.bookcase_right
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 899999
push.v self.bookcase_right
pushi.e -9
pop.v.i [stacktop]self.depth

:[18]
pushi.e -5
pushi.e 418
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[19]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 418
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]