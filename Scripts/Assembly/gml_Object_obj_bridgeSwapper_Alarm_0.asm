.localvar 2 arguments
.localvar 18153 housecolor 19545

:[0]
push.v self.swapped
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e 1276
pushenv [4]

:[2]
push.v self.bridgetarget
push.v other.bridgetarget
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1144
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.replace
push.v self.sprite_index
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_index
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.bridgetarget
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.bridgetarget
push.v other.c_nred
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [2]
pushi.e 1144
pushenv [8]

:[5]
push.v self.bridgetarget
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [8]

:[6]
push.v self.bridgetarget
push.v other.bridgetarget2
cmp.v.v EQ
bf [8]

:[7]
pushi.e 1276
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.replace2
push.v self.sprite_index
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_index
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v other.bridgetarget2
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.bridgetarget
push.v other.c_nred
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [5]
push.v self.extflag
push.s "swatchlingRescue"@14230
cmp.s.v EQ
bf [11]

:[9]
push.s "triggered"@14321
pop.v.s self.extflag
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 1
pop.v.b 1212.saved

:[11]
pushi.e 1
pop.v.i self.swapped
b [20]

:[12]
pushi.e 1276
pushenv [15]

:[13]
push.v self.bridgetarget
push.v other.bridgetarget2
cmp.v.v EQ
bf [15]

:[14]
pushi.e 1144
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.replace
push.v self.sprite_index
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.bridgetarget
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.bridgetarget
push.v other.c_nblue
push.v self.replace
pushi.e -9
pop.v.v [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [13]
pushi.e 1144
pushenv [19]

:[16]
push.v self.bridgetarget
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [19]

:[17]
push.v self.bridgetarget
push.v other.bridgetarget
cmp.v.v EQ
bf [19]

:[18]
pushi.e 1276
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.replace2
push.v self.sprite_index
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v other.bridgetarget
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.bridgetarget
push.v other.c_nblue
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [16]
pushi.e 0
pop.v.i self.swapped

:[20]
push.v self.swapped
pop.v.v self.image_index
push.i 16777215
pop.v.i local.housecolor
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 255
pop.v.i local.housecolor

:[22]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.i 16711680
pop.v.i local.housecolor

:[24]
push.v self.dontskip
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
pushloc.v local.housecolor
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_scr_fx_housesquare(argc=3)
popz.v

:[end]