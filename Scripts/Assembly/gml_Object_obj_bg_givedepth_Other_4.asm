.localvar 2 arguments
.localvar 107 i 18566
.localvar 220 j 18568

:[0]
call.i layer_get_all(argc=0)
pop.v.v self.layerarray
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.layerarray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [12]

:[2]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.layerarray
call.i layer_get_name(argc=1)
push.s "GIVE_DEPTH"@33536
cmp.s.v EQ
bf [11]

:[3]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.layerarray
call.i layer_get_all_elements(argc=1)
pop.v.v self.elements
pushi.e 0
pop.v.i local.j

:[4]
pushloc.v local.j
push.v self.elements
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [10]

:[5]
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_get_element_type(argc=1)
pushi.e 4
cmp.i.v EQ
bf [9]

:[6]
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_sprite(argc=1)
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_y(argc=1)
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_x(argc=1)
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.layersprite
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_xscale(argc=1)
push.v self.layersprite
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_yscale(argc=1)
push.v self.layersprite
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_speed(argc=1)
push.v self.layersprite
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_get_index(argc=1)
push.v self.layersprite
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.layersprite
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e -1
pushloc.v local.j
conv.v.i
push.v [array]self.elements
call.i layer_sprite_destroy(argc=1)
popz.v

:[9]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [4]

:[10]
b [12]

:[11]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]