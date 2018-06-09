
tabuleiro = {}

function tabuleiro:gerar()
	for linha = 1, 3 do
		tabuleiro[linha] = {}

		for coluna = 1, 3 do
			tabuleiro[linha][coluna]= 1
		end
	end
	return tabuleiro
end
patou = 0
function tabuleiro:enpatou()
	for linha = 1, 3 do
		for coluna = 1, 3 do
			if(tabuleiro[linha][coluna] == 1 and patou == 0) then
				patou = patou + 1
			end
		end
	end
	if(patou == 0)then
		text1 = display.newText( 
			":( Jogo Enpatou ):", display.contentWidth/2, 370, native.systemFont, 25 )
	end
	patou = 0
end

function tabuleiro:mensagemX()
	local text1 = display.newText( 
		":)Jogador X Ganhou!(:", display.contentWidth/2, 370, native.systemFont, 25 )
	local text2 = display.newText( 
		"<<Parabéns>>", display.contentWidth/2, 400, native.systemFont, 25 )	
end

function tabuleiro:mensagemO()
	text1 = display.newText( 
		":)Jogador O Ganhou!(:", display.contentWidth/2, 370, native.systemFont, 25 )
	text2 = display.newText( 
		"<<Parabéns>>", display.contentWidth/2, 400, native.systemFont, 25 )	
end

function tabuleiro:verificarGanhouX()
	if(tabuleiro[1][1] == "X" and tabuleiro[1][2] == "X" and tabuleiro[1][3] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[2][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[2][3] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[3][1] == "X" and tabuleiro[3][2] == "X" and tabuleiro[3][3] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][1] == "X" and tabuleiro[3][1] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[1][2] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][2] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][3] == "X" and tabuleiro[3][3] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][3] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][1] == "X")then
		tabuleiro:mensagemX()
		patou = 1
	end

end

function tabuleiro:verificarGanhouO()
	if(tabuleiro[1][1] == "O" and tabuleiro[1][2] == "O" and tabuleiro[1][3] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[2][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[2][3] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[3][1] == "O" and tabuleiro[3][2] == "O" and tabuleiro[3][3] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][1] == "O" and tabuleiro[3][1] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[1][2] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][2] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][3] == "O" and tabuleiro[3][3] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][3] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][1] == "O")then
		tabuleiro:mensagemO()
		patou = 1
	end

end


function tabuleiro:iniciarJogadas()
i = 1
	while i <= 9 do

		if(i % 2 == 0)then
			print("..........................")
			print("Jogador " .. jogador1.nome .. " jogue:(X)")
				print("..........................")
				print("digite a linha:")
					linhaLocal = io.read("*number")

				print("..........................")
				print("digite a coluna:")
					colunaLocal = io.read("*number")

					if(type(linhaLocal) == "number" and type(colunaLocal) == "number")then

						if(linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3 and
							tabuleiro[linhaLocal][colunaLocal] == 1)then
							tabuleiro[linhaLocal][colunaLocal] = "X"
							tabuleiro:visualizar()
							i = i + 1
						tabuleiro:verificarGanhouX()
						else
							print("..........................")
							print("**Digite um numero entre 1 e 3** \n**Escolha uma casa vazia**")
						end
					else
						print("..........................")
						print("Voc� digitou uma letra, Digite um numero!!")
						io.read(1)
					end


		else
			print("..........................")
			print("Jogador " .. jogador1.nome .. " jogue:(O)")
				print("..........................")
				print("digite a linha:")
					linhaLocal = io.read('*number')
				print("..........................")
				print("digite a coluna:")
					colunaLocal = io.read('*number')
					if(type(linhaLocal) == "number" and type(colunaLocal) == "number" and
					linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3)then
					if(linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3
						and tabuleiro[linhaLocal][colunaLocal] == 1)then

							tabuleiro[linhaLocal][colunaLocal] = "O"
							tabuleiro:visualizar()
							i = i + 1
							tabuleiro:verificarGanhouO()
						else
							print("..........................")
							print("**Digite um numero entre 1 e 3** \n**Escolha uma casa vazia**")
						end

						else
							print("..........................")
							print("Voc� digitou uma letra, Digite um numero!!")
							io.read(1)
						end
		end

	end

	if(i == 10)then
		tabuleiro:enpatou()
		i = i + 1
	end
end


