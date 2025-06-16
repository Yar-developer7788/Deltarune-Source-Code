.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v GT
bf [end]

:[1]
push.v self.lineToCenter
conv.v.b
bf [3]

:[2]
push.v self.ystart
push.v self.master
pushi.e -9
push.v [stacktop]self.y
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.ystart
push.v self.xstart
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v

:[6]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_yoffset
sub.v.v
push.v self.x
push.v self.sprite_xoffset
sub.v.v
push.v self.spriteHeightRoot
push.v self.cutOff
push.v self.image_yscale
div.v.v
sub.v.v
push.v self.spriteWidthRoot
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]