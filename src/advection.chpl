	config const n = 100, tf = 1.0, cfl = 1.0, io=0;
	const D = {0..n}, ID = D[1..n];
	
	var u, du : [D] real;
	
	forall(i) in D do{
		if(i < n/2){
			u[i] = 1;
		}
	}
	if(io){
		var f = open('ui.dat', iomode.cw);
		var writer = f.writer();
		writer.write(u);
	}
	const dx = 1.0/n;
	const dt = cfl*dx;
	var t = 0.0;
	while(1){
		t += dt;
		forall(i) in ID do{
			du[i] = -(u[i] - u[i-1])/dx*dt; 
		}
		forall(i) in ID do{
			u[i] += du[i];
		}
					
		if(t > tf){
			break;
		}
	}
	if(io){
		var f = open('uf.dat', iomode.cw);
		var writer = f.writer();
		writer.write(u);
	}
	


	