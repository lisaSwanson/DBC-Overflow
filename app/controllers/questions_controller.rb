get '/questions' do

	erb :'/questions/index'
end

get '/questions/ask' do

	erb :'/questions/ask/_question'
end

get '/questions/ask/:id' do
  @question = Question.find(params[:id])

  erb :'/questions/ask/_show'
end

post '/questions/ask' do
	@question = Question.create(title: params[:title], question_desc: params[:question_body], user_id: session[:user_id])
	add_tags(params[:tags])
	add_to_tag_map(@tags_array, @question)

	erb :index
end

