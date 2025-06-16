.localvar 2 arguments
.localvar 21226 menu_go 9176
.localvar 21227 roomchoice 9177
.localvar 12148 CH 9178

:[0]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [5]

:[1]
push.v self.choice_index
pushi.e 1
sub.i.v
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.choice
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
b [4]

:[3]
push.v self.choice_index
pushi.e 1
sub.i.v

:[4]
pop.v.v self.choice_index

:[5]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [10]

:[6]
push.v self.choice_index
pushi.e 1
add.i.v
push.v self.choice
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
cmp.v.v GT
bf [8]

:[7]
pushi.e 0
conv.i.v
b [9]

:[8]
push.v self.choice_index
pushi.e 1
add.i.v

:[9]
pop.v.v self.choice_index

:[10]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [end]

:[11]
push.v self.choice_index
pushi.e 0
cmp.i.v EQ
bf [36]

:[12]
pushi.e 0
pop.v.i local.menu_go
pushi.e 2
pop.v.i local.roomchoice
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v local.CH
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i local.menu_go

:[14]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 1
pop.v.i local.menu_go

:[16]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.i local.menu_go

:[18]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [20]

:[19]
pushi.e 1
pop.v.i local.menu_go

:[20]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e 1
pop.v.i local.menu_go

:[22]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [24]

:[23]
pushi.e 2
pop.v.i local.menu_go

:[24]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_4"@21228
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 2
pop.v.i local.menu_go

:[26]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_5"@21229
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 2
pop.v.i local.menu_go

:[28]
pushloc.v local.menu_go
pushi.e 0
cmp.i.v EQ
bt [30]

:[29]
pushloc.v local.menu_go
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 2
pop.v.i local.roomchoice

:[33]
pushloc.v local.menu_go
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.s "DELTARUNE"@132
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.tempflag
pushi.e 234
pop.v.i local.roomchoice
pushi.e 0
pop.v.i global.plot

:[35]
pushi.e 0
pop.v.i global.darkzone
pushloc.v local.roomchoice
call.i room_goto(argc=1)
popz.v
b [end]

:[36]
push.v self.choice_index
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
call.i room_goto_next(argc=0)
popz.v
b [end]

:[38]
push.v self.choice_index
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
call.i gml_Script_scr_load(argc=0)
popz.v
b [end]

:[40]
push.v self.choice_index
pushi.e 3
cmp.i.v EQ
bf [end]

:[41]
push.s "filech1_3"@14051
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [43]

:[42]
pushi.e 3
pop.v.i global.filechoice
call.i gml_Script_scr_load_chapter1(argc=0)
popz.v
pushi.e 0
pop.v.i global.filechoice
pushi.e 0
pop.v.i global.darkzone
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[43]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]