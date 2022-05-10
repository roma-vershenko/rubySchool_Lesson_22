require 'sinatra'
get '/' do
  erb :index
end

post '/' do
  @user_name=params[:user_name]
  @phone=params[:phone]
  @date_time=params[:date_time]
  @title='Thank you'
  @message="Dear #{@user_name}, we'll be waiting for you at #{@date_time}"
  f=File.open'./public/users.txt', 'a'   #все пользователи будут записываться в файлЫ , в текущую папку public
  f.write"User:#{@user_name}, Phone:#{@phone}, Date and time #{@date_time.strip} "
  # f.close
  #chmod 666 users.txt  - если в маке не будет работать передать в файл(разрешаем запись и чтение всем)
  erb :message
end

post 'admin' do
  @login=params[:aaa]
  @password=[:bbb]
  end


