tarefas = []
opcao = 0

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
    tarefa = ""

  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets
    tarefas << tarefa
    puts
    puts 'Tarefa cadastrada: ' + tarefa
    gets
  elsif opcao == 2
    puts
    tarefas.each_with_index { |tarefa, index|
        puts "##{index+1}#{index} - #{tarefa} "
    }
    gets
  elsif opcao == 3
    puts
    puts 'Digite o que quer pesquisar: ' 
    consulta = gets
    tarefas_encontradas = []
    tarefas.each { |tarefa|
        if consulta.downcase == tarefa.downcase 
            tarefas_encontradas << tarefa
        end
    }
    puts 'Resultado da pesquisa: '
    puts tarefas_encontradas
    gets
  else
    puts
    puts 'Opção inválida'
  end
end