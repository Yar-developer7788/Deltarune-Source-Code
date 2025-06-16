.localvar 2 arguments

:[0]
pushi.e 5000
pop.v.i self.depth
pushi.e 0
pop.v.b self.fileExists
push.s "Question Prompt?"@26839
pop.v.s self.q
push.s "#yes"@26840
pop.v.s self.c1
push.s "#no"@26842
pop.v.s self.c2
push.s "maybe"@26844
pop.v.s self.c3
push.s "so"@26846
pop.v.s self.c4
pushi.e 4
pop.v.i self.promptcount
pushi.e 0
pop.v.i self.fileExists
push.s "choicer.txt"@26849
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.fileExists

:[2]
push.v self.fileExists
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s "choicer.txt"@26849
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.promptcount
push.s "promptcount"@26848
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v self.c4
push.s "c4"@26847
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_string(argc=3)
popz.v
push.v self.c3
push.s "c3"@26845
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_string(argc=3)
popz.v
push.v self.c2
push.s "c2"@26843
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_string(argc=3)
popz.v
push.v self.c1
push.s "c1"@26841
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_string(argc=3)
popz.v
push.v self.q
push.s "question"@26850
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i self.fileExists
b [5]

:[4]
push.s "choicer.txt"@26849
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.q
push.s "question"@26850
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.q
push.v self.c1
push.s "c1"@26841
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c1
push.v self.c2
push.s "c2"@26843
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c2
push.v self.c3
push.s "c3"@26845
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c3
push.v self.c4
push.s "c4"@26847
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c4
push.v self.promptcount
push.s "promptcount"@26848
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.promptcount
call.i ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i self.fileExists

:[5]
pushi.e 0
pop.v.i self.haswritten
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 4
pop.v.i global.typer
b [end]

:[7]
pushi.e 1
pop.v.i global.typer

:[end]