.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sb_con
push.i 173295
setowner.e
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_5_0"@31652
conv.s.v
push.s "SMART"@31653
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.sb_word
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_6_0"@31655
conv.s.v
push.s "INTELLIGENT"@31656
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.sb_word
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_7_0"@31657
conv.s.v
push.s "CLEVER"@31658
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.sb_word
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_8_0"@31659
conv.s.v
push.s "GENIUS"@31660
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.sb_word
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_9_0"@31661
conv.s.v
push.s "PRODIGY"@31662
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.sb_word
push.s "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_10_0"@31663
conv.s.v
push.s "QUICK"@31664
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.sb_word
pushi.e -1
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
conv.v.i
push.v [array]self.sb_word
pop.v.v self.sb_word_current
push.v self.sb_word_current
pop.v.v self.sb_word_previous
push.s ""@157
pop.v.s self.sb_noelle
push.s ""@157
pop.v.s self.sb_berdly
pushi.e 0
pop.v.i self.noelle_index
pushi.e 0
pop.v.i self.berdly_index
push.v self.sb_word_current
call.i string_length(argc=1)
pushi.e 1
add.i.v
pop.v.v self.wb_word_length
pushi.e 1
pop.v.b self.noelle_spell
pushi.e 1
pop.v.b self.berdly_spell
pushi.e 0
pop.v.b self.noelle_finish
pushi.e 0
pop.v.b self.berdly_finish
pushi.e 1
pop.v.b self.update_word
pushi.e 0
pop.v.b self.noelle_lose
pushi.e 1
pop.v.i self.text_alpha
pushi.e 0
pop.v.b self.berdly_smart
pushi.e 1
pop.v.b self.berdly_show_word
push.s ""@157
pop.v.s self.berdly_word_current
push.s ""@157
pop.v.s self.berdly_word_previous
pushi.e 0
pop.v.i self.berdly_iq_siner
pushi.e 0
pop.v.i self.berdly_word_count

:[end]