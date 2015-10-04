all:
	chpl advection.chpl -o advection
	cp advection.chpl advection-serial.chpl
	sed -i.bak s/forall/for/g advection-serial.chpl
	chpl advection-serial.chpl -o advection-serial
	rm *.bak
clean:
	rm advection advection-serial*
