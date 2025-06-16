.localvar 2 arguments

:[0]
push.v other.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.built
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 231
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.bridgetarget
push.s "bridge1"@14233
cmp.s.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index

:[3]
push.v self.bridgetarget
push.s "bridge2"@14234
cmp.s.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
pushi.e 1144
pushenv [13]

:[6]
push.v self.bridgetarget
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [13]

:[7]
push.v self.bridgetarget
push.v other.bridgetarget
cmp.v.v EQ
bf [13]

:[8]
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
pushi.e 212
conv.i.v
pushi.e 167
conv.i.v
pushi.e 39
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nblue
pushi.e 77
conv.i.v
pushi.e 84
conv.i.v
pushi.e 231
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nred
push.v self.bridgetarget
push.s "bridge2"@14234
cmp.s.v EQ
bf [10]

:[9]
push.v self.c_nblue
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[10]
push.v self.bridgetarget
push.s "bridge1"@14233
cmp.s.v EQ
bf [12]

:[11]
push.v self.c_nred
push.v self.replace2
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [6]
pushi.e 1
pop.v.i self.built
b [15]

:[14]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[15]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[end]