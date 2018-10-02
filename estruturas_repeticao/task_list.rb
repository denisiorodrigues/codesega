tarefa = ""
opcao = 0

while opcao != 3 do
	system('clear')
  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
	puts '[1] Inserir uma tarefa'
	puts '[2] Ver todas as tarefas'
	puts '[3] Sair'
	puts
	print 'Opção escolhida: '

	opcao = gets.to_i

  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets
    puts
    puts 'Tarefa cadastrada: ' + tarefa
  elsif opcao == 2
    puts
    puts tarefa
  else
    puts
    puts 'Opção inválida'
  end
end