class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cartoon
  end

  def generate_cartoon
    cartoon1 = Cartoon.create!(name: 'Sailor Moon')
    cartoon2 = Cartoon.create!(name: 'Dragon Ball Z')
    cartoon3 = Cartoon.create!(name: 'Zelda')
    character1 = Character.create!(name: 'Sailor Jupiter', powers: '{invisibility}', cartoon_id: cartoon1.id)
  end

end

Seed.begin
