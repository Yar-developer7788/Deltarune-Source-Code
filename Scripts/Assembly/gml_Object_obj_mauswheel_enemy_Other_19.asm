.localvar 2 arguments

:[0]
push.v global.turntimer
pushi.e 120
add.i.v
pop.v.v global.turntimer
push.i 231869
setowner.e
push.s "MausHoles"@23888
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 19
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.cursor_count
push.v self.total_cursors
cmp.v.v LT
bf [end]

:[1]
push.v self.cursor_count
push.e 1
add.i.v
pop.v.v self.cursor_count

:[end]