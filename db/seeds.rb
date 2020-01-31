class Seed

  def self.begin
    Park.destroy_all
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    types = ["National Park", "National Monument", "National Trail"]
    60.times do |i|
      if i % 2 == 0
        type = types[0]
      elsif i % 3 == 0
        type = types[2]
      else
        type = types[1]
      end
      park = Park.create!(name: Faker::Nation.capital_city, location: Faker::Address.state, kind: type, description: Faker::Lorem.paragraph(sentence_count: 4), picture_file_name: Faker::LoremPixel.image)
      puts "Park #{i}: name is #{park.name}."
    end
  end

end

Seed.begin
