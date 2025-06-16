.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
push.i 167655
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.xoffset
push.i -99999
pop.v.i self.depth
pushi.e 5
pop.v.i self.letterspeed1
push.d 2.5
pop.v.d self.letterspeed2
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 16
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 4
pop.v.i self.letterspeed1
pushi.e 2
pop.v.i self.letterspeed2

:[end]