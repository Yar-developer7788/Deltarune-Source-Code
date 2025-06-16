.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.book_con
pushi.e 2892
conv.i.v
pushi.e 120
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bookcase_left
pushi.e 0
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 850050
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -4
pop.v.i self.bookcase_collider
pushi.e -4
pop.v.i self.shine
pushi.e 0
pop.v.i self.weretriggered
pushi.e 547
pop.v.i self.encounterflag
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.weretriggered

:[2]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [end]

:[3]
pushi.e 3
pop.v.i self.weretriggered

:[end]