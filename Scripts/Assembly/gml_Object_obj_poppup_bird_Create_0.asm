.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.startdirection
push.v self.speed
pop.v.v self.topSpeed
pushi.e 0
pop.v.i self.init
pushi.e 60
conv.i.v
call.i irandom(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.xx
pushi.e 60
conv.i.v
call.i irandom(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.yy
pushi.e 0
pop.v.i self.targetplayer
pushi.e 1
pop.v.i self.slow

:[end]