class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cartoon
  end

  def generate_cartoon
    cartoon1 = Cartoon.create!(name: 'Sailor Moon')
    cartoon2 = Cartoon.create!(name: 'Dragon Ball Z')
    cartoon3 = Cartoon.create!(name: 'Zelda')
    character1 = Character.create!(name: 'Sailor Jupiter', powers: '{Supreme Thunder, Supreme Thunder Crash}', cartoon_id: cartoon1.id)
    character2 = Character.create!(name: 'Sailor Moon', powers: '{Moon Tiara Magic, Moon Tiara Vaporize}', cartoon_id: cartoon1.id)
    character3 = Character.create!(name: 'Sailor Mercury', powers: '{Bubble Spray, Mercury Ice Storm Blast}', cartoon_id: cartoon1.id)
    character4 = Character.create!(name: 'Sailor Mars', powers: '{Fire Soul}', cartoon_id: cartoon1.id)
    character5 = Character.create!(name: 'Sailor Venus', powers: '{Crescent Beam, Crescent Beam Shower}', cartoon_id: cartoon1.id)
    character6 = Character.create!(name: 'Sailor Chibi Moon', powers: '{Pink Sugar Heart Attack}', cartoon_id: cartoon1.id)
    character7 = Character.create!(name: 'Sailor Pluto', powers: '{Dead Scream}', cartoon_id: cartoon1.id)
    character8 = Character.create!(name: 'Sailor Uranus', powers: '{World Shaking}', cartoon_id: cartoon1.id)
    character9 = Character.create!(name: 'Sailor Neptune', powers: '{Submarine Reflection}', cartoon_id: cartoon1.id)
    character10 = Character.create!(name: 'Sailor Saturn', powers: '{Silence Glaive Surprise}', cartoon_id: cartoon1.id)
    character11 = Character.create!(name: 'Tuxedo Mask', powers: '{Rose}', cartoon_id: cartoon1.id)
    20.times do |i|
      dragonball = Character.create!(
        name: Faker::DragonBall.character,
        powers: '{Fireball, Firestar}',
        cartoon_id: cartoon2.id
      )
    end
    20.times do |i|
      zelda = Character.create!(
        name: Faker::Zelda.character,
        powers: '{Slice, Stab}',
        cartoon_id: cartoon3.id
      )
    end
  end

end

Seed.begin
