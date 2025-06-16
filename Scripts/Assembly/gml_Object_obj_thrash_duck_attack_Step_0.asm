.localvar 2 arguments

:[0]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 20
cmp.i.v EQ
bf [end]

:[1]
pushi.e 745
conv.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.heady
push.v self.thrash
pushi.e -9
push.v [stacktop]self.headx
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 2069
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]