.localvar 2 arguments
.localvar 14707 _cut 12419

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.bighead
conv.v.b
bf [3]

:[2]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.d 0.7
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.8
conv.d.v
pushi.e 40
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.v self.hitshot
pushi.e -9
pushenv [7]

:[6]
push.v self.x
push.v self.hspeed
call.i abs(argc=1)
sub.v.v
pop.v.v self.x
pushi.e -8
pop.v.i self.hspeed
pushi.e -10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
pushi.e -8
conv.i.v
call.i choose(argc=4)
pop.v.v self.vspeed
pushi.e 90
conv.i.v
push.v self.id
call.i gml_Script_scr_doom(argc=2)
popz.v

:[7]
popenv [6]
b [end]

:[8]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
push.v self.hitshot
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 1.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.7
conv.d.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
call.i gml_Script_scr_afterimage_cut(argc=0)
pop.v.v local._cut
pushi.e 1
pushloc.v local._cut
pushi.e -9
pop.v.b [stacktop]self.flash
call.i instance_destroy(argc=0)
popz.v

:[end]