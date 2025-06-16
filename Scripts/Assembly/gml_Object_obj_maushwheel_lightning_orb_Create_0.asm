.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
push.v 631.depth
pushi.e 100
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self._pitch
pushi.e 137
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
push.v self._pitch
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
push.v self.target
pop.v.v 761.mytarget
pushi.e 16
pop.v.i self.grazepoints
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 761.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=2)
pop.v.v self.goal

:[end]