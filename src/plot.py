from pylab import *
ui = loadtxt("ui.dat")
uf = loadtxt("uf.dat")
print ui
x = linspace(0, 1.0, size(ui))
plot(x, ui,linewidth=2)
plot(x, uf,linewidth=2)

ylim(0,2)
xlim(-0.5, 1.5)
show()
