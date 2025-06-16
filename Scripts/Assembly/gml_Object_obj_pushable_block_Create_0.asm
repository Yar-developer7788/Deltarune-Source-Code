.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.myinteract
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 8
pop.v.i self.movespeed
pushi.e 5
pop.v.i self.movetimertarget
push.v self.sprite_index
call.i sprite_get_bbox_left(argc=1)
push.v self.sprite_index
call.i sprite_get_bbox_right(argc=1)
sub.v.v
pushi.e 2
mul.i.v
pop.v.v self.wd
push.v self.sprite_index
call.i sprite_get_bbox_bottom(argc=1)
push.v self.sprite_index
call.i sprite_get_bbox_top(argc=1)
sub.v.v
pushi.e 2
mul.i.v
pop.v.v self.ht
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.xoffset
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.yoffset

:[end]