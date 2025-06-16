.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pop.v.v self.btimer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.attack
pushi.e 20
pop.v.i self.firingspeed
pushi.e 46
pop.v.i self.mouthx
pushi.e 97
pop.v.i self.mouthy
pushi.e 0
pop.v.i self.creator
pushi.e 0
pop.v.i self.flip
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 12
pop.v.i self.pieceoffset_x
pushi.e 94
pop.v.i self.pieceoffset_y
pushi.e 360
conv.i.v
push.v self.y
push.v self.pieceoffset_y
sub.v.v
push.v self.x
push.v self.pieceoffset_x
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.headtop
push.d 0.1
push.v self.headtop
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1836
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 2
sub.i.v
push.v self.headtop
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.reposition
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v self.jumpy
pushi.e 0
pop.v.i self.init
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.made
pushi.e 0
pop.v.i self.doublecount
pushi.e 0
pop.v.i self.inhalesfx
pushi.e 0
pop.v.i self.effecttimer

:[end]