@lista_contatos = Array.new

def adiciona_contato(contato)
    @lista_contatos.push contato
end

def limpa_texto(texto)
    texto.strip
end

def descricao_telefone(tipo_telefone)
    case tipo_telefone
    when 'C'
        'Comercial'
    when 'R'
        'Residencial'
    when 'M'
        'Celular'
    else
        'Não identificado'
    end
end

def obtem_registro
    puts 'Entre com seu nome: '
    nome = gets
    puts "Seu nome é: #{nome}"
    puts 'Entre com seu telefone: '
    telefone = gets
    puts 'Entre com o tipo de telefone: [C] Comercial, [R] Residencial, [M] Celular'
    tipo_telefone = gets
    contato = "#{limpa_texto(nome)} - #{limpa_texto(telefone)} - #{descricao_telefone(limpa_texto(tipo_telefone))}"
    adiciona_contato(contato)
    puts contato
    puts 'Obrigado por inserir seu telefone na minha agenda!'
end
#Chamada do método

continue = '1'

while(continue == '1')
    obtem_registro
    puts 'Você deseja adicionar mais um contato na agenda?'
    puts '[1] Sim'
    puts '[0] Não'
    continue = limpa_texto(gets)
end

puts
puts "Lista de contatos!"
@lista_contatos.each{ |contato| puts contato }

