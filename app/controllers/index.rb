
get '/' do

  # Look in app/views/index.erb
  erb :index
end


get '/round' do
  # @card = Card.shuffle
  # @card = Card.find_by(id: params[:id])
  erb :round
end


post '/check' do
  # if params[:answer] == :answer
  #   redirect '/round'
  # else
  #   p "try again"
  # end
end
