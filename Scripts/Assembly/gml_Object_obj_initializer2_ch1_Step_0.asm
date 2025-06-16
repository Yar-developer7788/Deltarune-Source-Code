.localvar 2 arguments

:[0]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 282
pop.v.i self.roomchoice
pushi.e 0
pop.v.i self.menu_go
push.s "filech1_0"@13995
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.menu_go

:[5]
push.s "filech1_1"@13997
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i self.menu_go

:[7]
push.s "filech1_2"@13999
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i self.menu_go

:[9]
push.s "filech1_3"@14051
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 1
pop.v.i self.menu_go

:[11]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i self.menu_go

:[13]
push.s "filech1_3"@14051
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 2
pop.v.i self.menu_go

:[15]
push.s "filech1_4"@14052
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 2
pop.v.i self.menu_go

:[17]
push.s "filech1_5"@14053
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 2
pop.v.i self.menu_go

:[19]
push.v self.menu_go
pushi.e 0
cmp.i.v EQ
bf [28]

:[20]
pushglb.v global.is_console
conv.v.b
bf [22]

:[21]
pushi.e 426
conv.i.v
b [23]

:[22]
pushi.e 282
conv.i.v

:[23]
pop.v.v self.roomchoice
push.v self.roomchoice
pushi.e 426
cmp.i.v EQ
bf [27]

:[24]
push.s "store_prompt"@14638
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [27]

:[25]
pushglb.v global.store_prompt
conv.v.b
bf [27]

:[26]
pushi.e 282
pop.v.i self.roomchoice

:[27]
b [32]

:[28]
push.v self.menu_go
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 420
pop.v.i self.roomchoice
b [32]

:[30]
push.v self.menu_go
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_initializer2_slash_Step_0_gml_22_0"@41943
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.tempflag
pushi.e 413
pop.v.i self.roomchoice
pushi.e 0
pop.v.i global.plot

:[32]
push.v self.roomchoice
call.i room_goto(argc=1)
popz.v

:[end]