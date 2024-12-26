-- Cor do painel
--color = tocolor(255, 0, 78, 255)
--color = tocolor(255, 0, 215, 255)
--color = tocolor(0, 117, 255, 255)
color = tocolor(255, 122, 0, 255)

-- Preço Maximo e minimo do alcool
alcool_minimo = 5
alcool_maximo = 7

-- Preço Maximo e minimo da Gasolina(será esse valor mais o valor do Alcool por ser melhor)
gas_minimo = 1
gas_maximo = 4

-- Tempo que ira subir 1% da gasolina(em segundos) na bomba
fueltime = 1

-- Tempo que a gasolina ira descer(em segundos) ao andar de carro
fuel_time_down = 30

-- Distancia maxima que jogador podera se afastar da bomba
maxDistance = 8

-- ID do objeto da bomba
objectId1 = 3465

-- ID do objeto da torneira(Ponta da mangueira)
objectId2 = 1808

-- Localização das bombas de gasolina
clearStation = {
  --{x, y, z, rot},
	{1007.1370849609, -936.28277587891, 42.328125, 270},
	{1000.5251464844, -937.18579101563, 42.328125, 270},
}