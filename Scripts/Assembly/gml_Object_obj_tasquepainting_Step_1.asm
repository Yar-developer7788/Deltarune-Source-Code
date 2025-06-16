.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact

:[5]
push.v self.extflag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.tasquespawn
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.v self.tasquecon
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.tasqueTrig
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [20]

:[13]
pushi.e 1
pop.v.i self.tasqueTrig
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.tasquetimer
pushi.e 2
pop.v.i self.tasquecon
pushi.e 1
pop.v.i self.image_index
pushi.e 1674
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tasquemarker_head1
pushi.e 1669
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tasquemarker1
pushi.e 0
push.v self.tasquemarker1
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.depth
pushi.e 11
sub.i.v
push.v self.tasquemarker_head1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 10
sub.i.v
push.v self.tasquemarker1
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.id
push.v self.tasquemarker1
pushi.e -9
pop.v.v [stacktop]self.remid
push.v self.tasquemarker1
pushi.e -9
pushenv [15]

:[14]
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
pushi.e 610
conv.i.v
push.v other.x
call.i gml_Script_scr_jump_to_point(argc=4)
pop.v.v self.remjump
push.v self.remjump
push.v self.remid
pushi.e -9
pop.v.v [stacktop]self.remjump

:[15]
popenv [14]
push.v self.tasquemarker_head1
pushi.e -9
pushenv [17]

:[16]
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
pushi.e 610
conv.i.v
push.v other.x
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[17]
popenv [16]
pushi.e 0
push.v self.remjump
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.tasquemarker1
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]
push.v self.tasquemarker1
pushi.e 1
sub.i.v
push.v self.tasquemarker_head1
pushi.e -9
pop.v.v [stacktop]self.depth

:[20]
push.v self.tasquecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[21]
push.v self.remjump
pushi.e -9
pushenv [23]

:[22]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[23]
popenv [22]
push.v self.tasquetimer
push.e 1
add.i.v
pop.v.v self.tasquetimer
push.v self.tasquemarker1
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[25]
popenv [24]
push.v self.tasquemarker1
pushi.e 1
sub.i.v
push.v self.tasquemarker_head1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.tasquetimer
pushi.e 24
cmp.i.v GTE
bf [end]

:[26]
pushi.e 1
pop.v.i self.image_index
pushi.e 103
conv.i.v
push.v self.tasquemarker1
pushi.e -9
push.v [stacktop]self.y
push.v self.tasquemarker1
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v 1265.marker2
pushi.e 1669
push.v 1265.marker2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 1265.marker2
pushi.e -9
pushenv [28]

:[27]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[28]
popenv [27]
push.v self.tasquemarker1
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
push.v self.tasquemarker_head1
pushi.e -9
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 0
pop.v.i self.tasquespawn
push.v self.tasquecon
push.e 1
add.i.v
pop.v.v self.tasquecon
pushi.e 0
pop.v.i self.tasquetimer

:[end]