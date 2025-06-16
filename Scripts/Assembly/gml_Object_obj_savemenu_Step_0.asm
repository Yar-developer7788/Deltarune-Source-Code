.localvar 2 arguments
.localvar 36890 menuwidth 18491
.localvar 36891 menuheight 18492

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.menuno
pushi.e 0
cmp.i.v EQ
bf [66]

:[1]
push.v self.xcoord
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [7]

:[6]
pushi.e 99
pop.v.i self.xcoord
pushi.e 1
pop.v.i self.endme

:[7]
push.v self.xcoord
pushi.e 2
cmp.i.v LT
bf [15]

:[8]
call.i gml_Script_left_p(argc=0)
conv.v.b
bt [10]

:[9]
call.i gml_Script_right_p(argc=0)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
bf [15]

:[12]
push.v self.xcoord
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.xcoord
b [15]

:[14]
pushi.e 1
pop.v.i self.xcoord

:[15]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [23]

:[16]
call.i gml_Script_up_p(argc=0)
conv.v.b
bt [18]

:[17]
call.i gml_Script_down_p(argc=0)
conv.v.b
b [19]

:[18]
push.e 1

:[19]
bf [23]

:[20]
push.v self.ycoord
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.ycoord
b [23]

:[22]
pushi.e 1
pop.v.i self.ycoord

:[23]
push.v self.xcoord
pushi.e 0
cmp.i.v EQ
bf [26]

:[24]
push.v self.ycoord
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [30]

:[29]
pushi.e 1
pop.v.i self.menuno
pushi.e 3
pop.v.i self.buffer
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[30]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [34]

:[31]
push.v self.xcoord
pushi.e 1
cmp.i.v EQ
bf [34]

:[32]
push.v self.ycoord
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 1
pop.v.i self.endme

:[37]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [41]

:[38]
push.v self.xcoord
pushi.e 0
cmp.i.v EQ
bf [41]

:[39]
push.v self.ycoord
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 1
pop.v.i global.interact
pushi.e 281
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.menu
pushi.e 4
push.v self.menu
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 2
pop.v.i self.endme

:[44]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [49]

:[45]
push.v self.xcoord
pushi.e 1
cmp.i.v EQ
bf [49]

:[46]
push.v self.ycoord
pushi.e 1
cmp.i.v EQ
bf [49]

:[47]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [49]

:[48]
push.v self.haverecruited
conv.v.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 1
pop.v.i global.interact
pushi.e 281
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.menu
pushi.e 3
push.v self.menu
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.recruitsubtype
push.v self.menu
pushi.e -9
pop.v.v [stacktop]self.subtype
pushi.e 2
pop.v.i self.endme

:[52]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [55]

:[53]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [55]

:[54]
push.v self.endme
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i self.endme

:[58]
push.v self.endme
pushi.e 1
cmp.i.v EQ
bf [62]

:[59]
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [61]

:[60]
pushi.e 3
pop.v.i self.onebuffer

:[61]
popenv [60]
call.i instance_destroy(argc=0)
popz.v

:[62]
push.v self.endme
pushi.e 2
cmp.i.v EQ
bf [66]

:[63]
pushi.e 82
pushenv [65]

:[64]
pushi.e 3
pop.v.i self.onebuffer

:[65]
popenv [64]
call.i instance_destroy(argc=0)
popz.v

:[66]
push.v self.menuno
pushi.e 1
cmp.i.v EQ
bf [end]

:[67]
pushi.e 60
pop.v.i local.menuwidth
pushi.e 80
pop.v.i local.menuheight
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
pushloc.v local.menuheight
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 120
add.i.v
pushloc.v local.menuwidth
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 120
add.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v

:[end]