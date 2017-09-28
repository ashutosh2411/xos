
decl
        integer inp ,in1,out;
        string str   ;
        
enddecl 

integer main()
{
    inp = 1 ;
    while(inp < 8)do

        print("Enter ");
        print("1 fork ") ;
        print("2 exec ");
        print("3 exit ");
        print("4 getpid ");
        print("5 getppid ");
        print("6 wait");
        print("7 signal") ;
        read(inp);

        breakpoint ;

        if(inp == 1)then
            print("forking");
         
            out=Fork( );
            if(out == -2) then
             out = Exec("even.xsm");
             out = Wait(0);
             endif;
        
            print("output is");
            print(out) ;
        endif;

        if(inp == 2)then
            
            print("exec filename");
            
            read(str) ; 
            out = Exec(str);
            print("output is");
            print(out) ;
        endif;

        if(inp==3)then
            print("exiting");
            Exit();
            
        endif ;

        if(inp == 4 )then 
             print("getting pid");
            read(in1) ;
            out = Getpid(   );
            print("output is");
            print(out) ;

        endif ;

        if(inp == 5)then 
           
            print("getting ppid");
            read(in1) ;
            out = Getppid(   );
            print("output is");
            print(out) ;
        endif ;
        if(inp == 6) then
          print("enter pid to wait") ;
            read(in1 ) ;
             out = Wait(in1   );
            print("output is");
            print(out) ;
        endif ;
        if(inp == 7 )then 
            print("signaling") ;
            out = Signal(   );
            print("output is");
            print(out) ;
        endif ;


    endwhile ;  
    return 0;
}





