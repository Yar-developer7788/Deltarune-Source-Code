.localvar 2 arguments

:[0]
push.v self.songplay
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.i 231459
setowner.e
push.s "THE_HOLY.ogg"@19960
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 3
pop.v.i self.songplay

:[2]
push.v self.songplay
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.songplay

:[4]
push.v self.songplay
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 82
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 1
pop.v.i self.songplay

:[8]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.JA_XOFF
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.susindex
pop.v.v self.image_index
push.v self.susindex
push.d 0.1
add.d.v
pop.v.v self.susindex
push.v self.susy
pushi.e 1
sub.i.v
pop.v.v self.susy
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.susindex
push.d 2.1
pop.v.d self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [20]

:[15]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v self.JA_XOFF
pushi.e 37
pop.v.i global.typer
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_49_0"@19961
conv.s.v
push.s "Is this... the fountain...?/%"@19962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_fountainkris_slash_Step_0_gml_56_0"@19963
conv.s.v
push.s "Kris.../%"@19964
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[20]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 2348
pop.v.i self.sussprite
push.d 3.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [31]

:[26]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_75_0"@19965
conv.s.v
push.s "Dunno how, but.../"@19966
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_76_0"@19967
conv.s.v
push.s "It feels like we&stumbled into/"@19968
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_77_0"@19969
conv.s.v
push.s "something really&important, didn't we...?/"@19970
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_78_0"@19971
conv.s.v
push.s ".../%"@19972
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[28]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_fountainkris_slash_Step_0_gml_85_0"@19973
conv.s.v
push.s "It looks like we're&here again, huh.../"@19974
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_86_0"@19975
conv.s.v
push.s "The Roaring Knight.../"@19976
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_87_0"@19977
conv.s.v
push.s "Whatever they are,&they're making&these fountains.../"@19978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_88_0"@19979
conv.s.v
push.s ".../%"@19972
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[30]
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[31]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 2349
pop.v.i self.sussprite
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[36]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [42]

:[37]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_104_0"@19980
conv.s.v
push.s "Well, there's no time to&think about that now./"@19981
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_105_0"@19982
conv.s.v
push.s "Right now.../"@19983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_106_0"@19984
conv.s.v
push.s "It's time to go home,/"@19985
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_107_0"@19986
conv.s.v
push.s "right^1, Kris?/%"@19987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[39]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_fountainkris_slash_Step_0_gml_114_0"@19988
conv.s.v
push.s "But... is that really&a bad thing...?/"@19989
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_115_0"@19990
conv.s.v
push.s "Since they started&showing up,/"@19991
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_116_0"@19992
conv.s.v
push.s "Everything's gotten a lot&more interesting,&hasn't it...?/"@19993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_117_0"@19994
conv.s.v
push.s ".../"@19995
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_118_0"@19996
conv.s.v
push.s "Well, we don't have to&think about that now.../"@19997
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_119_0"@19998
conv.s.v
push.s "Kris, it's your turn./%"@19999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[41]
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
push.d 8.1
pop.v.d self.con

:[42]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [44]

:[43]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[47]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [49]

:[48]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[52]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i self.image_index
push.d 9.1
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[54]
push.v self.con
push.d 10.1
cmp.d.v EQ
bf [60]

:[55]
pushi.e 42
pop.v.i global.typer
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_150_0"@20000
conv.s.v
push.s "(As you stood in front&of the fountain,)/"@20001
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_151_0"@20002
conv.s.v
push.s "(You felt something strange.)/"@20003
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_152_0"@20004
conv.s.v
push.s "(It was as if)/"@20005
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_153_0"@20006
conv.s.v
push.s "(Your very SOUL was glowing...)/%"@20007
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[57]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_fountainkris_slash_Step_0_gml_160_0"@20008
conv.s.v
push.s "(It was as if your very SOUL was glowing...)/%"@14401
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[59]
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[60]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [62]

:[61]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [end]

:[64]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.made
pushi.e 233
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 13
pop.v.i self.con

:[end]