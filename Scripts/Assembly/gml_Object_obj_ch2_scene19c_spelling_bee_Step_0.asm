.localvar 2 arguments
.localvar 9578 x_pos 16343
.localvar 24561 word 16344

:[0]
push.v self.sb_con
pushi.e 1
cmp.i.v EQ
bf [37]

:[1]
push.v self.update_word
conv.v.b
bf [10]

:[2]
pushi.e 0
pop.v.b self.update_word
push.v self.sb_word_current
pop.v.v self.sb_word_previous
push.v self.noelle_lose
conv.v.b
not.b
bf [6]

:[3]
push.v self.sb_word_current
push.v self.sb_word_previous
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
conv.v.i
push.v [array]self.sb_word
pop.v.v self.sb_word_current
b [3]

:[5]
b [7]

:[6]
push.s "obj_ch2_scene19c_spelling_bee_slash_Step_0_gml_21_0"@31682
conv.s.v
push.s "DECEMBER"@31683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.sb_word_current

:[7]
push.v self.sb_word_current
call.i string_length(argc=1)
pushi.e 1
add.i.v
pop.v.v self.wb_word_length
push.s ""@157
pop.v.s self.sb_noelle
push.s ""@157
pop.v.s self.sb_berdly
pushi.e 0
pop.v.i self.noelle_index
pushi.e 0
pop.v.i self.berdly_index
pushi.e 1
pop.v.i self.text_alpha
push.v self.noelle_lose
conv.v.b
not.b
bf [9]

:[8]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[9]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[10]
push.v self.noelle_spell
conv.v.b
bf [12]

:[11]
pushi.e 0
pop.v.b self.noelle_spell
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[12]
push.v self.berdly_spell
conv.v.b
bf [17]

:[13]
pushi.e 0
pop.v.b self.berdly_spell
push.v self.noelle_lose
conv.v.b
bf [15]

:[14]
pushi.e 15
conv.i.v
b [16]

:[15]
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
call.i random_range(argc=2)

:[16]
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[17]
push.v self.noelle_finish
conv.v.b
bf [19]

:[18]
push.v self.berdly_finish
conv.v.b
b [20]

:[19]
push.e 0

:[20]
bf [27]

:[21]
push.v self.text_alpha
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.text_alpha
push.d 0.05
sub.d.v
pop.v.v self.text_alpha
b [27]

:[23]
pushi.e 0
pop.v.b self.noelle_finish
pushi.e 0
pop.v.b self.berdly_finish
push.v self.noelle_lose
conv.v.b
bf [25]

:[24]
pushi.e 60
conv.i.v
b [26]

:[25]
pushi.e 30
conv.i.v

:[26]
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[27]
push.v self.noelle_lose
conv.v.b
bf [29]

:[28]
push.v self.berdly_finish
conv.v.b
b [30]

:[29]
push.e 0

:[30]
bf [37]

:[31]
push.v self.text_alpha
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.text_alpha
push.d 0.05
sub.d.v
pop.v.v self.text_alpha
b [37]

:[33]
pushi.e 0
pop.v.b self.berdly_finish
pushi.e 99
pop.v.i self.sb_con
pushi.e 962
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [37]

:[34]
pushi.e 962
pushenv [36]

:[35]
pushi.e 25
pop.v.i self.con

:[36]
popenv [35]

:[37]
push.v self.berdly_smart
conv.v.b
bf [end]

:[38]
push.v self.berdly_show_word
conv.v.b
bf [end]

:[39]
pushi.e 0
pop.v.b self.berdly_show_word
push.v self.berdly_word_current
pop.v.v self.berdly_word_previous

:[40]
push.v self.berdly_word_current
push.v self.berdly_word_previous
cmp.v.v EQ
bf [42]

:[41]
pushi.e -1
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
conv.v.i
push.v [array]self.sb_word
pop.v.v self.berdly_word_current
b [40]

:[42]
push.v self.berdly_word_count
push.e 1
add.i.v
pop.v.v self.berdly_word_count
push.v self.berdly_word_count
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 180
conv.i.v
b [45]

:[44]
pushi.e 400
conv.i.v

:[45]
pop.v.v local.x_pos
pushi.e 964
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 150
add.i.v
pushi.e 100
conv.i.v
pushi.e 80
conv.i.v
pushi.e 60
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=4)
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.x_pos
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.word
push.v self.berdly_word_current
pushloc.v local.word
pushi.e -9
pop.v.v [stacktop]self.berdly_word
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm

:[end]