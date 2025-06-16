.localvar 2 arguments
.localvar 30038 newpitch 15867

:[0]
push.v self.frames
push.e 1
add.i.v
pop.v.v self.frames
push.v self.frames
push.v self.maxframes
div.v.v
push.v self.targetpitch
push.v self.initpitch
call.i lerp(argc=3)
pop.v.v local.newpitch
pushloc.v local.newpitch
push.v self.sndtarget
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.frames
push.v self.maxframes
cmp.v.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]