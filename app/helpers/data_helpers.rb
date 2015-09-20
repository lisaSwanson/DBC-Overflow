helpers do 

	def add_tags(tags)
		@tags = tags.split(" ")
		@tags_array = []
		@tags.each do |tag_name|
			tag = Tag.create(name: tag_name.downcase)
			if tag.id == nil
				tag = Tag.find_by(name: tag_name)
				@tags_array << tag
			else
				@tags_array << tag
			end
		end
		return @tags_array
	end

	def add_to_tag_map(tag_array, question)
		tag_array.each do |tag|
			TagMap.create(tag_id: tag.id, question_desc_id: question.id)
		end
	end



end