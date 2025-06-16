.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.followindex
pushi.e -4
pop.v.i self.memory
pushi.e 6
pop.v.i self.damage
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.destroyonhit
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
push.v self.depth
pushi.e 3
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.textflash
pushi.e 3
pop.v.i self.grazepoints

:[end]