.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.tsiner
pushi.e 0
pop.v.i global.tensionselect
pushglb.v global.tension
pop.v.v self.apparent
pushglb.v global.tension
pop.v.v self.current
pushi.e 0
pop.v.i self.change
pushi.e 15
pop.v.i self.changetimer
pushi.e 0
pop.v.i self.red
pushi.e 0
pop.v.i self.redtimer
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.yy
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 13
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.friction
pushi.e 0
pop.v.i self.flashsiner
pushi.e 0
pop.v.i self.maxed
pushi.e 250
conv.i.v
pushi.e 96
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.healthbar_surf

:[end]