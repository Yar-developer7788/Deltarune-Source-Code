.localvar 2 arguments

:[0]
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.width
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.height
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
pop.v.v self.xo
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
pop.v.v self.yo

:[end]