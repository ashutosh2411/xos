integer main() {
integer b, pid,a;
a=1;
while(a ==1) do
	pid = Fork();
	if(pid == -2) then
 		b = Exec("odd.xsm");
 		else print(pid*1000);
	endif;
endwhile;
return (0);
}
