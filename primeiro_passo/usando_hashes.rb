tarefas = []
opcao = 0

def imprime_tarefa(lista)
    lista.each_with_index { |tarefa, index|
        puts "##{index+1}#{index} - #{tarefa[:nome].to_s} | status: #{tarefa[:status]}"
    }
end

while opcao != 4 do
    system('clear')
    puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
    puts '[1] Inserir uma tarefa'
    puts '[2] Ver todas as tarefas'
    puts '[3] Buscar por tarefa'
    puts '[4] Sair'
    puts
    print 'Opção escolhida: '

    opcao = gets.to_i
    
  if opcao == 1
    print 'Digite sua tarefa: '
    nome_tarefa = gets.chomp!
    tarefa = {}
    tarefa[:nome] = nome_tarefa
    tarefa[:status] = false
    tarefas << tarefa

    puts
    puts 'Tarefa cadastrada: ' + nome_tarefa
    gets
  elsif opcao == 2
    imprime_tarefa(tarefas)
    gets
  elsif opcao == 3
    puts
    puts 'Digite o que quer pesquisar: ' 
    consulta = gets
    tarefas_encontradas = []
    tarefas.each { |tarefa|
        if consulta.downcase! == tarefa[:nome].downcase! 
            tarefas_encontradas << tarefa
        end
    }

    puts '------------------------------------'
    puts 'Resultado da pesquisa: '
    puts '------------------------------------'
    imprime_tarefa(tarefas_encontradas)
    gets
  else
    puts
    puts 'Opção inválida'
  end
end