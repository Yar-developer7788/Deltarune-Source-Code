.localvar 2 arguments
.localvar 14707 _cut 6468

:[0]
push.v self.destroyable
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v other.big
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [19]

:[4]
push.v other.y
push.v self.y
cmp.v.v LT
bf [7]

:[5]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_place(argc=3)
conv.v.b
bf [7]

:[6]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_nearest(argc=3)
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2060
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bt [14]

:[9]
push.v other.y
push.v self.y
cmp.v.v GT
bf [12]

:[10]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_place(argc=3)
conv.v.b
bf [12]

:[11]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_nearest(argc=3)
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2060
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
b [19]

:[17]
push.v other.y
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 12
cmp.i.v GT
bf [19]

:[18]
exit.i

:[19]
call.i @@Other@@(argc=0)
pop.v.v self.hitshot
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [27]

:[24]
push.v self.hitshot
pushi.e -9
pushenv [26]

:[25]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[26]
popenv [25]

:[27]
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
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.image_xscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [29]

:[28]
pushi.e 1972
pop.v.i self.sprite_index

:[29]
popenv [28]
call.i instance_destroy(argc=0)
popz.v

:[end]