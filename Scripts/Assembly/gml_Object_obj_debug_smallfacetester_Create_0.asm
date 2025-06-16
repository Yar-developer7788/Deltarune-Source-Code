.localvar 2 arguments

:[0]
pushi.e 5000
pop.v.i self.depth
pushi.e 0
pop.v.b self.fileExists
push.s "susie"@70
pop.v.s self.smallname
pushi.e 2
pop.v.i self.emotion
push.s "name"@3439
pop.v.s self.position
push.s "right"@4637
pop.v.s self.name_xpos
push.s "bottom"@4636
pop.v.s self.name_ypos
pushi.e 80
pop.v.i self.numb_xpos
pushi.e 120
pop.v.i self.numb_xpos
push.s "Example Dialogue."@14534
pop.v.s self.smalltext
push.s "* Example text. 0 /%"@14536
pop.v.s self.maintext
pushi.e 0
pop.v.i self.haswritten
pushi.e 0
pop.v.i self.fileExists
push.s "smallface.txt"@14539
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.fileExists

:[2]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i global.typer
b [end]

:[4]
pushi.e 1
pop.v.i global.typer

:[end]