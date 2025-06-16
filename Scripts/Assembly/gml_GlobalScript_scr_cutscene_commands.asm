.localvar 2 arguments
.localvar 9788 __easetype 1961
.localvar 9791 __sarg1 1962
.localvar 9792 __sarg2 1963
.localvar 9793 __sarg3 1964
.localvar 9794 __sarg4 1965
.localvar 9795 __sarg5 1966
.localvar 9796 __sarg_counted 1967
.localvar 9798 __commandtarget 1968
.localvar 9799 __commandscript 1969
.localvar 9820 _stickobj 1978
.localvar 9821 _stickdepth 1979
.localvar 9830 _snd 1982

:[0]
b [360]

> gml_Script_scr_cutscene_commands (locals=12, argc=0)
:[1]
push.v self._c
push.s "delaycmd"@59
cmp.s.v EQ
bf [6]

:[2]
pushi.e 899
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.delaycmd
push.v self.master_object
push.v self.delaycmd
pushi.e -9
pop.v.v [stacktop]self.master_object
push.i 42437349
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.command_actor
push.i 42338817
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.delaycmd
pushi.e -9
pop.v.v [stacktop]self._c
push.i 42437350
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.command_arg1
push.i 42437351
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.command_arg2
push.i 42437352
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.command_arg3
push.i 42437353
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.command_arg4
push.v self.instant
conv.v.b
bf [6]

:[3]
push.i 42338817
setowner.e
pushi.e 0
conv.i.v
push.v self.delaycmd
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
push.v self.delaycmd
pushi.e -9
pop.v.i [stacktop]self.instant
push.v self.delaycmd
pushi.e -9
pushenv [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]

:[6]
push.v self._c
push.s "walk"@9760
cmp.s.v EQ
bf [12]

:[7]
push.v self.instant
conv.v.b
not.b
bf [11]

:[8]
pushi.e 894
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.actor_move
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.direction_word
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.time
push.v self.actor_move
pushi.e -9
pushenv [10]

:[9]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
popenv [9]
b [12]

:[11]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_facing_letter_to_number(argc=1)
pushi.e 90
mul.i.v
pushi.e 90
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
mul.v.v
call.i lengthdir_x(argc=2)
add.v.v
pop.i.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_facing_letter_to_number(argc=1)
pushi.e 90
mul.i.v
pushi.e 90
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
mul.v.v
call.i lengthdir_y(argc=2)
add.v.v
pop.i.v [stacktop]self.y

:[12]
push.v self._c
push.s "walkdirect"@54
cmp.s.v EQ
bf [20]

:[13]
push.v self.instant
conv.v.b
not.b
bf [19]

:[14]
pushi.e 923
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.actor_move
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.movex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.movey
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.movemax
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.movex

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.actor_move
pushi.e -9
pop.v.v [stacktop]self.movey

:[18]
b [20]

:[19]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[20]
push.v self._c
push.s "msgset"@714
cmp.s.v EQ
bf [22]

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_msgset(argc=2)
popz.v

:[22]
push.v self._c
push.s "msgnext"@716
cmp.s.v EQ
bf [24]

:[23]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_msgnext(argc=1)
popz.v

:[24]
push.v self._c
push.s "talk"@9763
cmp.s.v EQ
bf [29]

:[25]
push.v self.instant
conv.v.b
not.b
bf [29]

:[26]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.msgside
pushi.e 0
cmp.i.v GTE
bf [28]

:[27]
push.v self.msgside
push.v self.mydialoguer
pushi.e -9
pop.v.v [stacktop]self.side

:[28]
push.v self.zurasu
push.v self.mydialoguer
pushi.e -9
pop.v.v [stacktop]self.zurasu

:[29]
push.v self._c
push.s "msgface"@9767
cmp.s.v EQ
bf [31]

:[30]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_anyface(argc=3)
popz.v

:[31]
push.v self._c
push.s "msgfacenext"@9768
cmp.s.v EQ
bf [33]

:[32]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_anyface_next(argc=2)
popz.v

:[33]
push.v self._c
push.s "msgside"@9765
cmp.s.v EQ
bf [44]

:[34]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "any"@9769
cmp.s.v EQ
bf [36]

:[35]
pushi.e -1
pop.v.i self.msgside

:[36]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "top"@6226
cmp.s.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i self.msgside

:[38]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "bottom"@4636
cmp.s.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.msgside

:[40]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "zurasuon"@9770
cmp.s.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.zurasu

:[42]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "zurasuoff"@9771
cmp.s.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.zurasu

:[44]
push.v self._c
push.s "emote"@9772
cmp.s.v EQ
bf [53]

:[45]
push.v self.instant
conv.v.b
not.b
bf [53]

:[46]
push.i 42437362
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg0
push.i 42437363
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg1
push.i 42437364
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e 0
cmp.i.v EQ
bf [50]

:[47]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [49]

:[48]
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_emote(argc=2)
popz.v

:[49]
popenv [48]
b [53]

:[50]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [52]

:[51]
push.v self.__arg2
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_emote(argc=3)
popz.v

:[52]
popenv [51]

:[53]
push.v self._c
push.s "speaker"@9777
cmp.s.v EQ
bf [55]

:[54]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_speaker(argc=1)
popz.v

:[55]
push.v self._c
push.s "fe"@956
cmp.s.v EQ
bf [58]

:[56]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v global.fe
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -2
cmp.i.v NEQ
bf [58]

:[57]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pop.v.v global.fc

:[58]
push.v self._c
push.s "msc"@368
cmp.s.v EQ
bf [60]

:[59]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[60]
push.v self._c
push.s "instancecreate"@9778
cmp.s.v EQ
bf [63]

:[61]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_instance_create(argc=3)
pop.v.v self._instance
push.v self.master_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [63]

:[62]
push.v self._instance
push.v self.master_object
pushi.e -9
pop.v.v [stacktop]self.cutscene_instance

:[63]
push.v self._c
push.s "var"@9781
cmp.s.v EQ
bf [79]

:[64]
push.v self.instant
conv.v.b
bf [67]

:[65]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e 0
cmp.i.v NEQ
bf [67]

:[66]
push.i 21269224
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg3
push.i 21269226
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg5

:[67]
pushi.e 0
pop.v.i self.__chosenid
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pop.v.v self.__chosenid
b [70]

:[69]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v self.__chosenid

:[70]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.__chosenid
call.i variable_instance_set(argc=3)
popz.v
b [79]

:[72]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.__chosenid
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v
b [79]

:[74]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
call.i is_string(argc=1)
conv.v.b
not.b
bf [76]

:[75]
push.s "in"@9785
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.__chosenid
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v
b [79]

:[76]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
call.i string_digits(argc=1)
call.i real(argc=1)
pop.v.v local.__easetype
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
call.i string_char_at(argc=2)
push.s "-"@9558
cmp.s.v EQ
bf [78]

:[77]
push.v local.__easetype
pushi.e -1
mul.i.v
pop.v.v local.__easetype
push.i 21269227
setowner.e
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
call.i string_delete(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg6

:[78]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
call.i string_delete(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
pushloc.v local.__easetype
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.__chosenid
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v

:[79]
push.v self._c
push.s "script"@9790
cmp.s.v EQ
bf [129]

:[80]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -10
cmp.i.v NEQ
bf [122]

:[81]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pop.v.v local.__sarg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pop.v.v local.__sarg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pop.v.v local.__sarg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pop.v.v local.__sarg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
pop.v.v local.__sarg5
pushi.e 3
pop.v.i local.__sarg_counted
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
push.d -3.14
cmp.d.v EQ
bf [83]

:[82]
push.v local.__sarg_counted
push.e 1
sub.i.v
pop.v.v local.__sarg_counted

:[83]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
push.d -3.14
cmp.d.v EQ
bf [85]

:[84]
push.v local.__sarg_counted
push.e 1
sub.i.v
pop.v.v local.__sarg_counted

:[85]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
push.d -3.14
cmp.d.v EQ
bf [87]

:[86]
push.v local.__sarg_counted
push.e 1
sub.i.v
pop.v.v local.__sarg_counted

:[87]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e 0
cmp.i.v EQ
bf [105]

:[88]
pushloc.v local.__sarg_counted
pushi.e 0
cmp.i.v EQ
bf [92]

:[89]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [91]

:[90]
pushloc.v local.__sarg1
call.i script_execute(argc=1)
popz.v

:[91]
popenv [90]

:[92]
pushloc.v local.__sarg_counted
pushi.e 1
cmp.i.v EQ
bf [96]

:[93]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [95]

:[94]
pushloc.v local.__sarg3
pushloc.v local.__sarg1
call.i script_execute(argc=2)
popz.v

:[95]
popenv [94]

:[96]
pushloc.v local.__sarg_counted
pushi.e 2
cmp.i.v EQ
bf [100]

:[97]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [99]

:[98]
pushloc.v local.__sarg4
pushloc.v local.__sarg3
pushloc.v local.__sarg1
call.i script_execute(argc=3)
popz.v

:[99]
popenv [98]

:[100]
pushloc.v local.__sarg_counted
pushi.e 3
cmp.i.v EQ
bf [104]

:[101]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [103]

:[102]
pushloc.v local.__sarg5
pushloc.v local.__sarg4
pushloc.v local.__sarg3
pushloc.v local.__sarg1
call.i script_execute(argc=4)
popz.v

:[103]
popenv [102]

:[104]
b [121]

:[105]
pushloc.v local.__sarg_counted
pushi.e 0
cmp.i.v EQ
bf [109]

:[106]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [108]

:[107]
pushloc.v local.__sarg2
pushi.e -1
conv.i.v
pushloc.v local.__sarg1
call.i gml_Script_scr_script_repeat(argc=3)
popz.v

:[108]
popenv [107]

:[109]
pushloc.v local.__sarg_counted
pushi.e 1
cmp.i.v EQ
bf [113]

:[110]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [112]

:[111]
pushloc.v local.__sarg3
pushloc.v local.__sarg2
pushi.e -1
conv.i.v
pushloc.v local.__sarg1
call.i gml_Script_scr_script_repeat(argc=4)
popz.v

:[112]
popenv [111]

:[113]
pushloc.v local.__sarg_counted
pushi.e 2
cmp.i.v EQ
bf [117]

:[114]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [116]

:[115]
pushloc.v local.__sarg4
pushloc.v local.__sarg3
pushloc.v local.__sarg2
pushi.e -1
conv.i.v
pushloc.v local.__sarg1
call.i gml_Script_scr_script_repeat(argc=5)
popz.v

:[116]
popenv [115]

:[117]
pushloc.v local.__sarg_counted
pushi.e 3
cmp.i.v EQ
bf [121]

:[118]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
pushenv [120]

:[119]
pushloc.v local.__sarg5
pushloc.v local.__sarg4
pushloc.v local.__sarg3
pushloc.v local.__sarg2
pushi.e -1
conv.i.v
pushloc.v local.__sarg1
call.i gml_Script_scr_script_repeat(argc=6)
popz.v

:[120]
popenv [119]

:[121]
b [129]

:[122]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v local.__commandtarget
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pop.v.v local.__commandscript
pushi.e 927
pushenv [128]

:[123]
push.v self.script
pushloc.v local.__commandscript
cmp.v.v EQ
bf [125]

:[124]
push.v self.target
pushloc.v local.__commandtarget
cmp.v.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
call.i instance_destroy(argc=0)
popz.v
push.i 21170689
setowner.e
pushi.e -5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -300
pop.v.i self.max_time

:[128]
popenv [123]

:[129]
push.v self._c
push.s "globalvar"@9801
cmp.s.v EQ
bf [131]

:[130]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i variable_global_set(argc=2)
popz.v

:[131]
push.v self._c
push.s "autowalk"@9803
cmp.s.v EQ
bf [133]

:[132]
push.i 42437379
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.auto_facing
push.i 42437380
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.auto_walk

:[133]
push.v self._c
push.s "autofacing"@9806
cmp.s.v EQ
bf [135]

:[134]
push.i 42437379
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.auto_facing

:[135]
push.v self._c
push.s "autodepth"@9807
cmp.s.v EQ
bf [137]

:[136]
push.i 42437381
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.auto_depth

:[137]
push.v self._c
push.s "depth"@277
cmp.s.v EQ
bf [139]

:[138]
push.i 42338821
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.depth

:[139]
push.v self._c
push.s "depthobject"@9809
cmp.s.v EQ
bf [141]

:[140]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
push.v [stacktop]self.depth
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.depth

:[141]
push.v self._c
push.s "flip"@9810
cmp.s.v EQ
bf [145]

:[142]
push.i 42437382
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__flipvalue
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [144]

:[143]
push.v self.__flipvalue
call.i gml_Script_scr_flip(argc=1)
popz.v

:[144]
popenv [143]

:[145]
push.v self._c
push.s "facing"@341
cmp.s.v EQ
bf [156]

:[146]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "l"@6707
cmp.s.v EQ
bt [150]

:[147]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "d"@6706
cmp.s.v EQ
bt [150]

:[148]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "r"@6696
cmp.s.v EQ
bt [150]

:[149]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "u"@6708
cmp.s.v EQ
b [151]

:[150]
push.e 1

:[151]
bf [153]

:[152]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
b [156]

:[153]
push.i 42437383
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self._setfacing
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [155]

:[154]
push.v self._setfacing
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[155]
popenv [154]

:[156]
push.v self._c
push.s "halt"@772
cmp.s.v EQ
bf [160]

:[157]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [159]

:[158]
call.i gml_Script_scr_halt(argc=0)
popz.v

:[159]
popenv [158]

:[160]
push.v self._c
push.s "spin"@9816
cmp.s.v EQ
bf [163]

:[161]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [163]

:[162]
push.i 42437384
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.spinspeed

:[163]
push.v self._c
push.s "stick"@9818
cmp.s.v EQ
bf [171]

:[164]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "on"@9819
cmp.s.v EQ
bf [168]

:[165]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pop.v.v local._stickobj
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pop.v.v local._stickdepth
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [167]

:[166]
pushloc.v local._stickdepth
pushloc.v local._stickobj
call.i gml_Script_scr_stickto(argc=2)
popz.v

:[167]
popenv [166]
b [171]

:[168]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [170]

:[169]
call.i gml_Script_scr_stickto_stop(argc=0)
popz.v

:[170]
popenv [169]

:[171]
push.v self._c
push.s "sprite"@9580
cmp.s.v EQ
bf [173]

:[172]
push.i 42338826
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[173]
push.v self._c
push.s "specialsprite"@9824
cmp.s.v EQ
bf [175]

:[174]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
conv.v.i
push.v [array]self.specialsprite
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 42437388
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.specialspriteno

:[175]
push.v self._c
push.s "visible"@6533
cmp.s.v EQ
bf [177]

:[176]
push.i 42338819
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.visible

:[177]
push.v self._c
push.s "imagespeed"@9826
cmp.s.v EQ
bf [179]

:[178]
push.i 42338839
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.image_speed

:[179]
push.v self._c
push.s "imageindex"@9827
cmp.s.v EQ
bf [181]

:[180]
push.i 42338827
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.image_index

:[181]
push.v self._c
push.s "animate"@9828
cmp.s.v EQ
bf [189]

:[182]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [184]

:[183]
push.v self.instant
conv.v.b
not.b
b [185]

:[184]
push.e 0

:[185]
bf [189]

:[186]
push.i 42437362
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg0
push.i 42437363
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg1
push.i 42437364
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [188]

:[187]
push.v self.__arg2
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_animate(argc=3)
popz.v

:[188]
popenv [187]

:[189]
push.v self._c
push.s "soundplay"@4
cmp.s.v EQ
bf [195]

:[190]
push.v self.instant
conv.v.b
not.b
bf [195]

:[191]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_snd_play(argc=1)
pop.v.v local._snd
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e 0
cmp.i.v NEQ
bf [193]

:[192]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushloc.v local._snd
call.i gml_Script_snd_volume(argc=3)
popz.v

:[193]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e 0
cmp.i.v NEQ
bf [195]

:[194]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushloc.v local._snd
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[195]
push.v self._c
push.s "mus"@9831
cmp.s.v EQ
bt [197]

:[196]
push.v self._c
push.s "music"@9832
cmp.s.v EQ
b [198]

:[197]
push.e 1

:[198]
bf [235]

:[199]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loop"@376
cmp.s.v EQ
bf [201]

:[200]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v

:[201]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "play"@6151
cmp.s.v EQ
bf [203]

:[202]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
popz.v

:[203]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "stop"@9833
cmp.s.v EQ
bf [205]

:[204]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_stop(argc=1)
popz.v

:[205]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "free_all"@9834
cmp.s.v EQ
bf [207]

:[206]
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[207]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "free"@9835
cmp.s.v EQ
bf [209]

:[208]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v

:[209]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "pause"@9836
cmp.s.v EQ
bf [211]

:[210]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v

:[211]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "resume"@9837
cmp.s.v EQ
bf [213]

:[212]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v

:[213]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "init"@9838
cmp.s.v EQ
bf [215]

:[214]
push.i 42436643
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[215]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "initplay"@9839
cmp.s.v EQ
bf [217]

:[216]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
call.i gml_Script_mus_initplay(argc=1)
popz.v

:[217]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "initloop"@9840
cmp.s.v EQ
bf [219]

:[218]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
call.i gml_Script_mus_initloop(argc=1)
popz.v

:[219]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "volume"@9841
cmp.s.v EQ
bf [221]

:[220]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[221]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "pitch"@9842
cmp.s.v EQ
bf [223]

:[222]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[223]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "pitchtime"@9843
cmp.s.v EQ
bf [225]

:[224]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch_time(argc=3)
popz.v

:[225]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loopsfx"@9844
cmp.s.v EQ
bf [227]

:[226]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.mysound

:[227]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loopsfxpitch"@9846
cmp.s.v EQ
bf [229]

:[228]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.mysound
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[229]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loopsfxpitchtime"@9847
cmp.s.v EQ
bf [231]

:[230]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.mysound
call.i gml_Script_snd_pitch_time(argc=3)
popz.v

:[231]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loopsfxstop"@9848
cmp.s.v EQ
bf [233]

:[232]
push.v self.mysound
call.i gml_Script_snd_stop(argc=1)
popz.v

:[233]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "loopsfxvolume"@9849
cmp.s.v EQ
bf [235]

:[234]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.mysound
call.i gml_Script_snd_volume(argc=3)
popz.v

:[235]
push.v self._c
push.s "fadeout"@9850
cmp.s.v EQ
bf [242]

:[236]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e 0
cmp.i.v GT
bf [239]

:[237]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_fadeout(argc=1)
pop.v.v self.__fadeouter
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e 0
cmp.i.v NEQ
bf [239]

:[238]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.__fadeouter
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[239]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e 0
cmp.i.v LT
bf [242]

:[240]
pushi.e 190
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [242]

:[241]
pushi.e 1
pop.v.i 190.image_alpha
pushi.e 1
conv.i.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
div.v.d
pop.v.v 190.fadespeed
pushi.e 1
pop.v.i 190.fadein

:[242]
push.v self._c
push.s "panspeed"@9855
cmp.s.v EQ
bf [246]

:[243]
push.v self.instant
conv.v.b
not.b
bf [245]

:[244]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_pan(argc=3)
popz.v
b [246]

:[245]
call.i gml_Script_camerax(argc=0)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
mul.v.v
add.v.v
call.i gml_Script_camerax_set(argc=1)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
mul.v.v
add.v.v
call.i gml_Script_cameray_set(argc=1)
popz.v

:[246]
push.v self._c
push.s "pan"@9858
cmp.s.v EQ
bf [250]

:[247]
push.v self.instant
conv.v.b
not.b
bf [249]

:[248]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_pan_lerp(argc=3)
popz.v
b [250]

:[249]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_camerax_set(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
call.i gml_Script_cameray_set(argc=1)
popz.v

:[250]
push.v self._c
push.s "panobj"@9859
cmp.s.v EQ
bf [255]

:[251]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
call.i gml_Script_scr_pan_to_obj(argc=2)
popz.v
push.v self.instant
conv.v.b
bf [255]

:[252]
pushi.e 189
pushenv [254]

:[253]
push.v self.finalx
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v self.finaly
call.i gml_Script_cameray_set(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[254]
popenv [253]

:[255]
push.v self._c
push.s "pannable"@9862
cmp.s.v EQ
bf [258]

:[256]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [258]

:[257]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v 82.cutscene

:[258]
push.v self._c
push.s "shake"@6135
cmp.s.v EQ
bf [261]

:[259]
push.v self.instant
conv.v.b
not.b
bf [261]

:[260]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[261]
push.v self._c
push.s "shakex"@6412
cmp.s.v EQ
bf [264]

:[262]
push.v self.instant
conv.v.b
not.b
bf [264]

:[263]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myshake
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.v self.myshake
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
push.v self.myshake
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
push.v self.myshake
pushi.e -9
pop.v.v [stacktop]self.shakespeed

:[264]
push.v self._c
push.s "shakeobj"@9131
cmp.s.v EQ
bf [269]

:[265]
push.v self.instant
conv.v.b
not.b
bf [269]

:[266]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [268]

:[267]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[268]
popenv [267]

:[269]
push.v self._c
push.s "jump"@9866
cmp.s.v EQ
bf [276]

:[270]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [276]

:[271]
push.i 42437362
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg0
push.i 42437363
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg1
push.i 42437364
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg2
push.i 42437399
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg3
push.v self.instant
conv.v.b
not.b
bf [275]

:[272]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [274]

:[273]
push.v self.__arg3
push.v self.__arg2
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[274]
popenv [273]
b [276]

:[275]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[276]
push.v self._c
push.s "jumpinplace"@9869
cmp.s.v EQ
bf [282]

:[277]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [282]

:[278]
push.i 42437362
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg0
push.i 42437363
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg1
push.v self.instant
conv.v.b
not.b
bf [282]

:[279]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [281]

:[280]
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_jump_in_place(argc=2)
popz.v

:[281]
popenv [280]

:[282]
push.v self._c
push.s "jumpsprite"@9871
cmp.s.v EQ
bf [289]

:[283]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [289]

:[284]
push.i 42437362
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg0
push.i 42437363
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg1
push.i 42437364
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg2
push.i 42437399
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg3
push.i 42437400
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg4
push.i 42437401
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.__arg5
push.v self.instant
conv.v.b
not.b
bf [288]

:[285]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pushenv [287]

:[286]
push.v self.__arg5
push.v self.__arg4
push.v self.__arg3
push.v self.__arg2
push.v self.__arg1
push.v self.__arg0
call.i gml_Script_scr_jump_to_point_sprite(argc=6)
popz.v

:[287]
popenv [286]
b [289]

:[288]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[289]
push.v self._c
push.s "addxy"@9875
cmp.s.v EQ
bf [291]

:[290]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
add.v.v
pop.i.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
add.v.v
pop.i.v [stacktop]self.y

:[291]
push.v self._c
push.s "setxy"@9876
cmp.s.v EQ
bf [293]

:[292]
push.i 42338801
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.i 42338802
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[293]
push.v self._c
push.s "arg_objectxy"@9877
cmp.s.v EQ
bf [295]

:[294]
push.i 21269222
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg2
add.v.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.command_arg1
push.i 21269223
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg3
add.v.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.command_arg2

:[295]
push.v self._c
push.s "actortoobject"@9878
cmp.s.v EQ
bf [297]

:[296]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 42338819
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_actor
pushi.e -9
pop.v.i [stacktop]self.visible

:[297]
push.v self._c
push.s "actortokris"@9879
cmp.s.v EQ
bf [313]

:[298]
pushi.e 0
pop.v.i self.jjj

:[299]
push.v self.jjj
pushi.e 20
cmp.i.v LT
bf [313]

:[300]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_name
push.s "kris"@68
cmp.s.v EQ
bf [302]

:[301]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [303]

:[302]
push.e 0

:[303]
bf [312]

:[304]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.x
pop.v.v 82.x
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.y
pop.v.v 82.y
pushi.e 1
pop.v.i 82.visible
pushi.e 0
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.facing
push.s "d"@6706
cmp.s.v EQ
bf [306]

:[305]
pushi.e 0
pop.v.i global.facing

:[306]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.facing
push.s "r"@6696
cmp.s.v EQ
bf [308]

:[307]
pushi.e 1
pop.v.i global.facing

:[308]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.facing
push.s "u"@6708
cmp.s.v EQ
bf [310]

:[309]
pushi.e 2
pop.v.i global.facing

:[310]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.facing
push.s "l"@6707
cmp.s.v EQ
bf [312]

:[311]
pushi.e 3
pop.v.i global.facing

:[312]
push.v self.jjj
push.e 1
add.i.v
pop.v.v self.jjj
b [299]

:[313]
push.v self._c
push.s "actortocaterpillar"@9883
cmp.s.v EQ
bf [334]

:[314]
pushi.e 0
pop.v.i self._caterpillar_moved
pushi.e 0
pop.v.i self.lll

:[315]
push.v self.lll
pushi.e 2
cmp.i.v LT
bf [330]

:[316]
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [329]

:[317]
pushi.e 0
pop.v.i self.jjj

:[318]
push.v self.jjj
pushi.e 20
cmp.i.v LT
bf [329]

:[319]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_name
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
cmp.v.v EQ
bf [321]

:[320]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [322]

:[321]
push.e 0

:[322]
bf [328]

:[323]
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.x
cmp.v.v NEQ
bf [325]

:[324]
push.i 42338801
setowner.e
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 1
pop.v.i self._caterpillar_moved

:[325]
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.y
cmp.v.v NEQ
bf [327]

:[326]
push.i 42338802
setowner.e
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
pop.v.i self._caterpillar_moved

:[327]
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
push.v [stacktop]self.facing
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_name
call.i gml_Script_scr_caterpillar_facing_single(argc=2)
popz.v
push.i 42338819
setowner.e
pushi.e 1
pushi.e -5
push.v self.lll
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pushi.e -1
push.v self.jjj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
pop.v.i [stacktop]self.visible

:[328]
push.v self.jjj
push.e 1
add.i.v
pop.v.v self.jjj
b [318]

:[329]
push.v self.lll
push.e 1
add.i.v
pop.v.v self.lll
b [315]

:[330]
push.v self._caterpillar_moved
pushi.e 1
cmp.i.v EQ
bf [334]

:[331]
pushi.e 276
pushenv [333]

:[332]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[333]
popenv [332]

:[334]
push.v self._c
push.s "saveload"@9886
cmp.s.v EQ
bf [339]

:[335]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "save"@9887
cmp.s.v EQ
bf [337]

:[336]
call.i gml_Script_scr_cutscene_savestate(argc=0)
popz.v

:[337]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
push.s "load"@9889
cmp.s.v EQ
bf [339]

:[338]
call.i gml_Script_scr_cutscene_loadstate(argc=0)
popz.v

:[339]
push.v self._c
push.s "select"@9891
cmp.s.v EQ
bf [341]

:[340]
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
conv.v.i
push.v [array]self.actor_name
pop.v.v self.actor_selected
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
conv.v.i
push.v [array]self.actor_id
pop.v.v self.actor_selected_id

:[341]
push.v self._c
push.s "waitcustom"@9894
cmp.s.v EQ
bf [345]

:[342]
push.v self.master_object
pushi.e -9
pushenv [344]

:[343]
pushi.e 1
pop.v.i self.customcon

:[344]
popenv [343]
pushi.e 1
pop.v.i self.cs_wait_custom
pushi.e 1
pop.v.i self.waiting
pushi.e 1
pop.v.i self.breakme

:[345]
push.v self._c
push.s "waitdialoguer"@9899
cmp.s.v EQ
bf [348]

:[346]
push.v self.instant
conv.v.b
not.b
bf [348]

:[347]
pushi.e 1
pop.v.i self.waiting
pushi.e 1
pop.v.i self.cs_wait_dialogue
pushi.e 1
pop.v.i self.breakme

:[348]
push.v self._c
push.s "waitbox"@9901
cmp.s.v EQ
bf [351]

:[349]
push.v self.instant
conv.v.b
not.b
bf [351]

:[350]
pushi.e 1
pop.v.i self.waiting
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v self.cs_wait_box
pushi.e 1
pop.v.i self.breakme

:[351]
push.v self._c
push.s "wait"@9903
cmp.s.v EQ
bf [355]

:[352]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command_arg1
pop.v.v self.cs_wait_amount
push.v self.instant
conv.v.b
bf [354]

:[353]
pushi.e 1
pop.v.i self.cs_wait_amount

:[354]
pushi.e 0
pop.v.i self.cs_wait_timer
pushi.e 1
pop.v.i self.waiting
pushi.e 1
pop.v.i self.breakme

:[355]
push.v self._c
push.s "terminate"@9906
cmp.s.v EQ
bf [357]

:[356]
pushi.e 1
pop.v.i self.terminate_this_frame
pushi.e 1
pop.v.i self.breakme

:[357]
push.v self._c
push.s "terminatekillactors"@9908
cmp.s.v EQ
bf [359]

:[358]
pushi.e 1
pop.v.i self.kill_actors
pushi.e 1
pop.v.i self.terminate_this_frame
pushi.e 1
pop.v.i self.breakme

:[359]
exit.i

:[360]
push.i [function]gml_Script_scr_cutscene_commands
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_commands
popz.v

:[end]