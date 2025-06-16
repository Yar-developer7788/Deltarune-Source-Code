.localvar 2 arguments

:[0]
push.v self.boxLeft
pushi.e 4
add.i.v
push.v self.x
push.v self.sprite_xoffset
sub.v.v
sub.v.v
pop.v.v self.xx
push.v self.boxTop
pushi.e 4
add.i.v
push.v self.y
push.v self.sprite_yoffset
sub.v.v
sub.v.v
pop.v.v self.yy
push.v self.boxTop
pushi.e 5
add.i.v
push.v self.boxLeft
pushi.e 5
add.i.v
push.v 872.sprite_height
pushi.e 8
sub.i.v
push.v 872.sprite_width
pushi.e 8
sub.i.v
push.v self.yy
push.v self.xx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[end]