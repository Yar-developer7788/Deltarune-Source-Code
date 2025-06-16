.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.trackplayer
pushi.e 1
pop.v.i self.bouncepower
push.v self.trackplayer
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.d 1.25
pop.v.d self.bouncepower

:[2]
call.i gml_Script_cameray(argc=0)
pushi.e 50
add.i.v
pop.v.v self.jumppeak
push.v 872.x
push.v 872.maxxscale
pushi.e 75
mul.i.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 872.maxxscale
pushi.e 75
mul.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.nexttarget
pushi.e 0
pop.v.i self.currentrotation
pushi.e 0
pop.v.i self.animTimer
pushi.e 3
pop.v.i self.animspeed
pushi.e 0
pop.v.i self.animindex
pushi.e 0
pop.v.i self.bouncespecial
push.v 872.y
push.v 872.maxyscale
pushi.e 75
mul.i.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pop.v.v self.bouncepoint
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.creator
pushi.e 0
pop.v.i self.defaultdepth
pushi.e 1
pop.v.i self.spawnbullets
pushi.e 0
pop.v.i self.bullettype
push.v 443.red_count
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.bullettype

:[4]
pushi.e 0
pop.v.b self.heart_found

:[end]