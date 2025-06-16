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
pushi.e 20
pop.v.i self.movetimetarget
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
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.spawnfood
pushi.e 0
pop.v.i self.spawnbib
pushi.e 0
pop.v.i self.spawnplate
pushi.e 0
pop.v.i self.food
pushi.e 0
pop.v.i self.plate
pushi.e 0
pop.v.i self.bib
pushi.e 0
pop.v.i self.interactablelancer
pushi.e 0
pop.v.i self.dust
pushi.e 0
pop.v.i self.timer

:[end]