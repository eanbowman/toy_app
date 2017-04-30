class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	random_string = ('a'..'z').to_a.shuffle[0..7].join
  	output = "¡Hola, mundo!" + "\n<br>" + random_string
	render html: output.html_safe
  end

  def goodbye
  	render html: "Goodbye"
  end
end
