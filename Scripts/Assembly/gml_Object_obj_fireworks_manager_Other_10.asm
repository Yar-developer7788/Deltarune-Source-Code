.localvar 2 arguments
.localvar 107 i 7979
.localvar 19887 current_sprite 7980
.localvar 19888 resolution_factor 7981
.localvar 19890 h_pixels 7982
.localvar 19891 v_pixels 7983
.localvar 14922 x_offset 7984
.localvar 14921 y_offset 7985
.localvar 14733 surf 7986
.localvar 19892 pixels 7987
.localvar 19893 pixelx 7988
.localvar 19894 pixely 7990
.localvar 19895 pixelrgb 7992
.localvar 19896 pixelalpha 7994
.localvar 19882 _x 7996
.localvar 19881 _y 7997
.localvar 10811 col 7998
.localvar 19898 _alpha 7999
.localvar 19899 _blue 8000
.localvar 19900 _green 8001
.localvar 19901 _red 8002
.localvar 6665 width 8003
.localvar 10816 height 8004

:[0]
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.current_sprites
pop.v.v local.current_sprite
pushi.e 1
pop.v.i local.resolution_factor
pushloc.v local.current_sprite
pushglb.v global.firework_sprite_pixel_data
call.i ds_map_exists(argc=2)
conv.v.b
bf [4]

:[3]
b [14]

:[4]
pushloc.v local.current_sprite
call.i sprite_get_width(argc=1)
pushloc.v local.resolution_factor
mul.v.v
pop.v.v local.h_pixels
pushloc.v local.current_sprite
call.i sprite_get_height(argc=1)
pushloc.v local.resolution_factor
mul.v.v
pop.v.v local.v_pixels
pushloc.v local.current_sprite
call.i sprite_get_xoffset(argc=1)
pushloc.v local.resolution_factor
mul.v.v
pop.v.v local.x_offset
pushloc.v local.current_sprite
call.i sprite_get_yoffset(argc=1)
pushloc.v local.resolution_factor
mul.v.v
pop.v.v local.y_offset
pushloc.v local.v_pixels
pushloc.v local.h_pixels
call.i surface_create(argc=2)
pop.v.v local.surf
pushloc.v local.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.resolution_factor
pushloc.v local.resolution_factor
pushloc.v local.y_offset
pushloc.v local.x_offset
pushi.e 0
conv.i.v
pushloc.v local.current_sprite
call.i draw_sprite_ext(argc=9)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 0
pop.v.i local.pixels
push.i 168696
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.pixelx
push.i 168697
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.pixely
push.i 168698
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.pixelrgb
push.i 168699
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.pixelalpha
pushi.e 0
pop.v.i local._x

:[5]
pushloc.v local._x
pushloc.v local.h_pixels
cmp.v.v LT
bf [13]

:[6]
pushi.e 0
pop.v.i local._y

:[7]
pushloc.v local._y
pushloc.v local.v_pixels
cmp.v.v LT
bf [12]

:[8]
pushloc.v local._y
pushloc.v local._x
pushloc.v local.surf
call.i surface_getpixel_ext(argc=3)
pop.v.v local.col
pushloc.v local.col
conv.v.l
pushi.e 24
conv.i.l
shr.l.l
pushi.e 255
and.i.l
pop.v.l local._alpha
pushloc.v local._alpha
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
b [11]

:[10]
pushloc.v local.col
conv.v.l
pushi.e 16
conv.i.l
shr.l.l
pushi.e 255
and.i.l
pop.v.l local._blue
pushloc.v local.col
conv.v.l
pushi.e 8
conv.i.l
shr.l.l
pushi.e 255
and.i.l
pop.v.l local._green
pushloc.v local.col
conv.v.l
pushi.e 255
and.i.l
pop.v.l local._red
push.i 168698
setowner.e
pushloc.v local._blue
pushloc.v local._green
pushloc.v local._red
call.i make_colour_rgb(argc=3)
pushi.e -7
pushloc.v local.pixels
conv.v.i
pop.v.v [array]self.pixelrgb
push.i 168699
setowner.e
pushloc.v local._alpha
pushi.e -7
pushloc.v local.pixels
conv.v.i
pop.v.v [array]self.pixelalpha
push.i 168696
setowner.e
pushloc.v local._x
pushloc.v local.x_offset
sub.v.v
pushi.e -7
pushloc.v local.pixels
conv.v.i
pop.v.v [array]self.pixelx
push.i 168697
setowner.e
pushloc.v local._y
pushloc.v local.y_offset
sub.v.v
pushi.e -7
pushloc.v local.pixels
conv.v.i
pop.v.v [array]self.pixely
push.v local.pixels
push.e 1
add.i.v
pop.v.v local.pixels

:[11]
push.v local._y
push.e 1
add.i.v
pop.v.v local._y
b [7]

:[12]
push.v local._x
push.e 1
add.i.v
pop.v.v local._x
b [5]

:[13]
pushloc.v local.surf
call.i surface_free(argc=1)
popz.v
pushloc.v local.h_pixels
pop.v.v local.width
pushloc.v local.v_pixels
pop.v.v local.height
push.i 65536
setowner.e
pushloc.v local.pixelalpha
pushloc.v local.pixelrgb
pushloc.v local.height
pushloc.v local.width
pushloc.v local.pixely
pushloc.v local.pixelx
pushloc.v local.pixels
call.i @@NewGMLArray@@(argc=7)
pushloc.v local.current_sprite
pushglb.v global.firework_sprite_pixel_data
call.i ds_map_add(argc=3)
popz.v

:[14]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]