module InputTools

  def prompt
    '  >    '
  end

  def user_input
    print prompt
    get_user_input = gets.chomp
  end

end