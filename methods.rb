def get_name

  begin
    puts "Введите фамилию имя и отчество:"
    name = STDIN.gets.chomp

  end until name=~/\A(?=\A.{,100}\z) *[a-zа-яё]+ +[a-zа-яё]+ +[a-zа-яё]+ *\z/i
  # Regexp - не позволяет строке быть длиннее 100 символов
  # при этом позволяет вводить лишние пробелы

  name = name.scan(/[a-zа-яё]+/i).map(&:capitalize).join(" ")
  # Строка очищается от лишних пробелов, форматируется регистр

end


def get_description

  begin
    puts "Опишите деятельность человека:"
    description = STDIN.gets.chomp

  end while description=~/<.+>/
  #regexp проверяет наличие вредоносного кода

  description[0] = description[0].upcase

end