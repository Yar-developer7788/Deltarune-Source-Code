.localvar 2 arguments

:[0]
push.v self.noelle_index
push.e 1
add.i.v
pop.v.v self.noelle_index
push.v self.noelle_index
push.v self.wb_word_length
cmp.v.v LT
bf [2]

:[1]
push.v self.sb_noelle
push.v self.noelle_index
push.v self.sb_word_current
call.i string_char_at(argc=2)
add.v.v
pop.v.v self.sb_noelle
pushi.e 1
pop.v.b self.noelle_spell
b [end]

:[2]
pushi.e 1
pop.v.b self.noelle_finish

:[end]