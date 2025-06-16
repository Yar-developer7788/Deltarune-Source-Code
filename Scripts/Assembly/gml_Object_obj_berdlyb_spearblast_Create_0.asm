.localvar 2 arguments

:[0]
call.i path_add(argc=0)
pop.v.v self.mypath
pushi.e 0
pop.v.b self.init
pushi.e 10
pop.v.i self.damage
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.shootSpeed
push.v self.shootSpeed
pop.v.v self.timer
pushi.e 0
pop.v.i self.firedShots
pushi.e 10
pop.v.i self.bulletCount
pushi.e 0
pop.v.i self.progressLoop
pushi.e 1
pop.v.i self.pathLifetime
push.d 0.2
pop.v.d self.fadeSpeed
pushi.e 0
pop.v.i self.special
pushi.e 4
pop.v.i self.grazepoints
pushi.e 4
pop.v.i self.childgraze
pushi.e 0
pop.v.b self.aim_at_player
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]