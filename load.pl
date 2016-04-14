

% build(gui): produce a binary named 'gui'

build_prereqs :- [ita_inits,
				  anaphoric,binding,clitsmorph,interpret,itlexicon,main_parse,newGen,newReason,reference,semantic,standardutt,tagger,tagging,temp_space,tokeniz,writemodel,parsecs,itaLex0,infls,
				  qgui].

build(OutputFilename) :-
	build_prereqs,
	qsave_program(OutputFilename,[stand_alone=true,goal=gui]),
	halt.

build :- build(gui).



