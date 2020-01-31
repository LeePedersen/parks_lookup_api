class Seed
  Park.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    types = ["National Park", "National Monument"]
    10.times do |i|
      type = "National Trail"
      if i % 2 == 0
        type = types[0]
      else
        type = types[1]
      end
      park = Park.create!(name: Faker::Nation.capital_city, location: Faker::Address.state, type: type, description: Faker::Lorem.paragraph(sentence_count: 4))
      puts "Park #{i}: name is #{park.name}."
    end
  end

end

Seed.begin
