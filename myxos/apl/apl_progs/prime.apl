integer main()
{
	integer n, i, j, flag;
	i = 2;
	flag = 0;
	read(n);
	while (i <= n) do
		flag = 0;
		j = 2;
		while (j <= i/2) do
			if (i%j == 0) then
				flag = 1;
			endif;
			j = j + 1;
		endwhile;
		if (flag == 0) then
			print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
