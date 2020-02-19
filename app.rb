class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/hello" do
    erb :hello
  end
  get "/goodbye" do
    @name = "Joe"
    erb :goodbye
  end
  get "/date" do
    month = Time.now.strftime("%B")
    day = Time.now.strftime("%A")
    num_day = Time.now.day
    year = Time.now.year
    @date = "#{day}, #{month} #{num_day}, #{year}"
    erb :date
  end
end
