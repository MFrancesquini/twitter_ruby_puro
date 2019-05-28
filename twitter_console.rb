#Lendo todos os arquivos dos diretories e requerendo todos
Dir["./helpers/*.rb"].each {|file| require file }
Dir["./commands/**/*.rb"].each {|file| require file }
Dir["./config/*.rb"].each {|file| require file }


puts `clear`

begin
  while true
    command = menu(
      "O que você deseja fazer?",
      {
        "Twittar": :new_tweet,
        "Ver o meu perfil": :profile,
        "Ver o perfil de outro usuário": :other_profile,
        "Pesquisar": :search,
        "Ajuda": :help,
        "Sair": :exit
      }
    )

    case command
    when :new_tweet
      puts 'Desenvolvendo a fase para twittar...'
    when :profile
      TweetConsole::profile()
    when :other_profile
      TweetConsole::other_profile()
    when :search
      TweetConsole::search()
    when :help
      TweetConsole::help()
    when :exit
      Printc.title "Obrigado por utilizar o twitter no console do terminal com ruby puro!", :yellow, 3, true
      Printc.title "Contato: francesquini.professional@gmail.com", :yellow, 1, true
      break
    end
  end
rescue Interrupt => e  
  Printc.title "Contato: francesquini.professional@gmail.com", :yellow, 1, true
end
