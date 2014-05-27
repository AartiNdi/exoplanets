program habitableDistance
implicit none
real :: greenhouseTemp, BondAlbedo, stefanConstant, stellarLuminosity, taug, i, distance
greenhouseTemp = 288
BondAlbedo = 0.306
stefanConstant = 5.67037E-8
stellarLuminosity = 384.6E24
taug = 0.83
do i = 0.1, 5, 0.1
	distance = (1/ greenhouseTemp**2)*(((1-BondAlbedo)*stellarLuminosity*i)/(16*3.14*stefanConstant)*(1+ 0.75*taug))**0.5
	print *, "Stellar Luminosity", i, "Solar luminosity", "Distance for earth-like planet", distance
end do
end habitableDistance
