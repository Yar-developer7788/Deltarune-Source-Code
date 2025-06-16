.localvar 2 arguments
.localvar 12148 CH 18515

:[0]
pushglb.v global.is_console
conv.v.b
bf [5]

:[1]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
exit.i

:[3]
push.s "chapter"@336
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v local.CH
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 27
pop.v.i self.roomchoice
pushi.e 0
pop.v.i self.menu_go
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.menu_go

:[8]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i self.menu_go

:[10]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 1
pop.v.i self.menu_go

:[12]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i self.menu_go

:[14]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 1
pop.v.i self.menu_go

:[16]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 2
pop.v.i self.menu_go

:[18]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_4"@21228
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [20]

:[19]
pushi.e 2
pop.v.i self.menu_go

:[20]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_5"@21229
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e 2
pop.v.i self.menu_go

:[22]
pushglb.v global.is_console
conv.v.b
bf [25]

:[23]
pushglb.v global.game_won
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2
pop.v.i self.menu_go

:[25]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [27]

:[26]
pushi.e 3
pop.v.i self.menu_go

:[27]
push.v self.menu_go
pushi.e 0
cmp.i.v EQ
bt [29]

:[28]
push.v self.menu_go
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [34]

:[31]
pushglb.v global.is_console
conv.v.b
bf [33]

:[32]
pushi.e 0
pop.v.i global.screen_border_alpha

:[33]
pushi.e 2
pop.v.i self.roomchoice

:[34]
push.v self.menu_go
pushi.e 2
cmp.i.v EQ
bf [38]

:[35]
pushglb.v global.is_console
conv.v.b
bf [37]

:[36]
pushi.e 1
pop.v.i global.screen_border_alpha

:[37]
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
pop.v.i self.roomchoice
pushi.e 0
pop.v.i global.plot

:[38]
push.v self.menu_go
pushi.e 3
cmp.i.v EQ
bf [42]

:[39]
pushglb.v global.is_console
conv.v.b
bf [41]

:[40]
pushi.e 0
pop.v.i global.screen_border_alpha

:[41]
pushbltn.v builtin.room
call.i room_next(argc=1)
pop.v.v self.roomchoice

:[42]
push.v self.roomchoice
call.i room_goto(argc=1)
popz.v

:[end]