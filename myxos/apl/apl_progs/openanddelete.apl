decl
	integer a;
	integer b;
	integer c;
enddecl
integer main()
{
	a = Create("myfile.dat");
	print(a);
	b = Open("myfile.dat");
	print(b);
	c = Close(b);
	print(c);	
	a = Delete("myfile.dat");
	print(a);
	return 0;
}
