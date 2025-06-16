.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.setup_encounter
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.v global.encounterno
push.e 1
sub.i.v
pop.v.v global.encounterno

:[3]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [5]

:[4]
push.v global.encounterno
push.e 1
add.i.v
pop.v.v global.encounterno

:[5]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[6]
push.v global.encounterno
pushi.e 5
sub.i.v
pop.v.v global.encounterno

:[7]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [9]

:[8]
push.v global.encounterno
pushi.e 5
add.i.v
pop.v.v global.encounterno

:[9]
push.v self.encountermax
push.v self.encountermin
pushglb.v global.encounterno
call.i clamp(argc=3)
pop.v.v global.encounterno
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushglb.v global.encounterno
pop.v.v 240.myencounter

:[11]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [21]

:[12]
pushi.e 54
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [14]

:[13]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v

:[14]
pushi.e 55
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[15]
call.i gml_Script_scr_losechar(argc=0)
popz.v

:[16]
pushi.e 56
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [18]

:[17]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v

:[18]
pushi.e 57
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [20]

:[19]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[20]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "Party:  "@29852
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.charname
call.i string(argc=1)
add.v.s
push.s " "@353
add.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.charname
call.i string(argc=1)
add.v.v
push.s " "@353
add.s.v
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.charname
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "6: full party. 7:kris only. 8:kris and ralsei 9: kris + noelle"@29853
conv.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 455
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[21]
pushi.e 903
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [37]

:[22]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [37]

:[23]
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "EncounterNo: "@29854
pushglb.v global.encounterno
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [28]

:[25]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstancetype
call.i object_get_name(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 20
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[27]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [24]

:[28]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
pop.v.i self.j

:[29]
push.v self.j
pushi.e 5
cmp.i.v LT
bf [36]

:[30]
pushglb.v global.encounterno
push.v self.j
add.v.v
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [35]

:[32]
push.s "Encounter: "@29855
pushglb.v global.encounterno
push.v self.j
add.v.v
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.j
pushi.e 70
mul.i.v
add.v.i
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstancetype
call.i object_get_name(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 70
push.v self.i
pushi.e 10
mul.i.v
add.v.i
push.v self.j
pushi.e 70
mul.i.v
add.v.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[34]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [31]

:[35]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [29]

:[36]
push.s "Adjust EncounterNo:#1- 2+#3----- 4+++++"@29856
conv.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
b [37]

:[37]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
pushi.e 917
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e 917
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [end]

:[43]
pushi.e 917
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]

:[end]