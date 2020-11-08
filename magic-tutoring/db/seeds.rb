# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Apprentice.destroy_all
Professor.destroy_all
Subject.destroy_all
ApprenticeSubject.destroy_all
Conclave.destroy_all

#SUBJECTS

subjects = ["Hexual Education", "Familiar Husbandry", "Western Herbology and Flora", "Divinatory Arts and Seance", "Transformation Science", "Ancient Magical History of New England", "Apothecary Economics", "Enchanted Fauna of the Americas", "Black Magic Dispelling", "Druidic Incantations and Shamanism", "Practical Sorcery", "Broomstick Sports and Foundational Levitation", "Spellbinding Calligraphy", "Pillbugs and Potions", "Advanced Theory in Conjuring"]

#HOUSES 

houses = ["Horned Serpent", "Wampus", "Thunderbird", "Pukwudgie"]

#APPRENTICES

Apprentice.create(name: "Willamos Lytler", house: houses.sample, year: rand(1..7), username: "Will", password: "password")
Apprentice.create(name: "Tonyoq Alcorn", house: houses.sample, year: rand(1..7), username: "Tony", password: "password")
Apprentice.create(name: "Inelle Aderro", house: houses.sample, year: rand(1..7), username: "Inee", password: "password")
Apprentice.create(name: "Amandeera D'Paulago", house: houses.sample, year: rand(1..7), username: "Amanda", password: "password")
Apprentice.create(name: "Stelvenio Ibranezh", house: houses.sample, year: rand(1..7), username: "Steven", password: "password")
Apprentice.create(name: "Mariqosa Yougalla", house: houses.sample, year: rand(1..7), username: "Marisa", password: "password")
Apprentice.create(name: "Allexij Gamoril", house: houses.sample, year: rand(1..7), username: "Alex", password: "password")
Apprentice.create(name: "Kervull Gorrow", house: houses.sample, year: rand(1..7), username: "Kevin", password: "password")
Apprentice.create(name: "Jeschiq Vaugorhin", house: houses.sample, year: rand(1..7), username: "Jesse", password: "password")
Apprentice.create(name: "Myllon Vincter", house: houses.sample, year: rand(1..7), username: "Milan", password: "password")
Apprentice.create(name: "Ellynesh Tillentulo", house: houses.sample, year: rand(1..7), username: "Ellaine", password: "password")
Apprentice.create(name: "Mikhalious Leyev", house: houses.sample, year: rand(1..7), username: "Michael", password: "password")
Apprentice.create(name: "Kimkalla Nolgyun", house: houses.sample, year: rand(1..7), username: "Kim", password: "password")
Apprentice.create(name: "Rodrigallant Rohellus", house: houses.sample, year: rand(1..7), username: "Rodrigo", password: "password")
Apprentice.create(name: "Aleczandii Greyking", house: houses.sample, year: rand(1..7), username: "Alec", password: "password")
Apprentice.create(name: "Matelzior Sallindom", house: houses.sample, year: rand(1..7), username: "Matty", password: "password")
Apprentice.create(name: "Claymourn Pirrush", house: houses.sample, year: rand(1..7), username: "Clay", password: "password")

#SUBJECTS 

Subject.create(name: "Hexual Education", description: "A comprehensive exploration of the applications of Hexes. Details basics of Hex formulation and identification. Bring your wand, parchment, and quills. Includes thorough Hex-safety protocol, and cleansing techniques. Take your place in the Banishment Chamber of the Southern campus Dungeons. Pre-Requisite course work in Practical Sorcery required.")
Subject.create(name: "Familiar Husbandry", description: "Learn about common household familiars and their care. Covering materials on feline mental health, toad terrariums, owl feeding and care, common familiar maladies and curing. Train your familiar for collaborative spellwork and learn to communicate with your familiar. Class is held in the Fauna wing of the Biothaumaturgy building.")
Subject.create(name: "Western Herbology and Flora", description: "A field-based class of foraging and harvesting common Western Magical herbs. Outlines magical qualities, applications, and storage of herbs. Dangerous and poisonous flora are also detailed, along with amelioration and inoculation techniques. Bring iron pruning shears, willow basket, dragon-skin gloves, and note-taking supplies. Meet at the border of Skiliworg's Park and the Herbology Dome.")
Subject.create(name: "Divinatory Arts and Seance", description: "Access your intuition and enhance your perceptions through divination. Learn to read oracle and tarot cards, interpret tea leaves, and birth star charts. Topics also include trancing, candle flame reading, ceremonial crystal reflection, and magical dowsing. Bring your copy of Zoltaire's Zodiac Almanac and meet in the Solarium.")
Subject.create(name: "Transformation Science", description: "Begin your understanding of transformation through spellwork and rearrange the morphological properties of everday objects! By the end of this course, you should be able to completely and permanently transform an object the size of a storage trunk. Study the science of replicating objects as well as morphing its existing bio-magical structures. Text required is 'Object Impermanence' by Ogduleus Menther.")
Subject.create(name: "Ancient Magical History of New England", description: "Magic was not always widely accepted. The tragic witch trials of New England are proof of Sorcericide centuries ago. Study the origins of Witch-Muggle relations springing forth from years of witch-hunts. Topics covered are Salem Witch Trials, witch-hunting, The Magical Unity Non-Accusal Act, and finally the famous Peace-Treaty of New England, which set the grounds for North American Witch and Wizard Coordination and Acceptance Movement.")
Subject.create(name: "Apothecary Economics", description: "Every household needs a functional apothecary for kitchen, first-aid, and magical formulations. Find out which herbs and supplies are foundational to every household, and best practices for organizing and maintaining your supply shelf! This class will cover home-remedies, supernatural palliation of common magical ailments, and rules for properly sourcing and testing potency of apothecary ingredients. Bring your copper scales and apothecary storage jars.")
Subject.create(name: "Enchanted Fauna of the Americas", description: "Learn about the wild fauna of the Americas in this exciting class! Learn how to identify mystical animal mimics from their non-magical counterparts. Discover magical abilities of these wild beasts, and learn to harvest certain ingredients for use in your apothecary. Other topics include the illegal mystical-fauna trade, keeping magical creatures for hearth or farm, and care of magical bites, stings, and other dangerous effects. Wear your dragonskin gloves.")
Subject.create(name: "Black Magic Dispelling", description: "Learn to dispel common black magic. In this course we will cover topics of identifying black magic and carefully dispelling them. The Dark Arts are not to be trifled with and it takes a very adept witch or wizard to remove these dangerous spells. For a future in the field of Medi-Magic, this course is a must-do! Required text is 'Disperse the Curse' by Hertzog Theer.")
Subject.create(name: "Druidic Incantations and Shamanism", description: "Study the history of ancient druidry and shaminism of the Americas! Classes take place in the yurt behind the Grand Grimoire Grotto. Study dream-walking, drum-wakened meditations, spirit-fauna channeling, and smoke signalling. This course is for any with an interest in the primordial mystic arts and history.")
Subject.create(name: "Practical Sorcery", description: "Building foundational skills in witchcraft is essential for happy spell-casting. Topics include wand care, basic charms, introduction to spellcrafting, and choosing your familiar. Text required is 'Fundamental Principles in Enchantment' by Warvella Reeds.")
Subject.create(name: "Broomstick Sports and Foundational Levitation", description: "Test your agility in the air by learning sports on broomstick! Quidditch games will be played weekly, but you will also receive training on levitation techniques. Explore games like Dodge-Quaffle, Which Snitch, Hologram Chasing, and Float-Diving. Meet on the Gust Fields with your broomstick, or borrow one from the school. You'll need flying robes and a basic broom maintenance kit. This is a required element of apprentice curriculum.")
Subject.create(name: "Spellbinding Calligraphy", description: "You always need to keep your Grimoire updated with your latest studies. Casting spells is one thing, but writing them in your tome is a magical art as well. Bind your spells to your personal Book of Spells through fluorishing lines, enchanting filigrees, and title illumination. Bring your blank parchment book and be ready with at least 3 ink colors and 4 different quill heads. Text required 'Calligraphing Graphology' by Greppisson Fredrok.")
Subject.create(name: "Pillbugs and Potions", description: "Learn how to formulate alleviating solutions for common magical ailments, practical use, and functional application. Must have beginner potion set, 10 glass vials, and an iron cauldron. Meet in the Magi-Chem Auditorium on the North Colliseum Campus.")
Subject.create(name: "Advanced Theory in Conjuring", description: "Summon sumptuous feasts and festive delicacies through conjuring! Create etheric images and entertainment for all occasions using your imagination and sequenced wand-waving. Practice enchanted astral-projection illuminations, and develop your prestidigitation skills. Meet in the Hologram Planetarium and bring your 'Projects in Conjuring' workbook from the bookstore.")

#PROFESSORS  

Professor.create(name: "Haliburton Nomflask", house: houses.sample, subject: Subject.all.sample, username: "p1", password: "password")
Professor.create(name: "Lantzeltior Helikh", house: houses.sample, subject: Subject.all.sample, username: "p2", password: "password")
Professor.create(name: "Bringhal Sorchet", house: houses.sample, subject: Subject.all.sample, username: "p3", password: "password")
Professor.create(name: "Rarlantzi Kelkopp", house: houses.sample, subject: Subject.all.sample, username: "p4", password: "password")
Professor.create(name: "Dunnshire Cerchal", house: houses.sample, subject: Subject.all.sample, username: "p5", password: "password")
Professor.create(name: "Wickwarr Lanitzo", house: houses.sample, subject: Subject.all.sample, username: "p6", password: "password")
Professor.create(name: "Lawarrantz Dorduni", house: houses.sample, subject: Subject.all.sample, username: "p7", password: "password")
Professor.create(name: "Fallohal Warduntz", house: houses.sample, subject: Subject.all.sample, username: "p8", password: "password")
Professor.create(name: "Quinlantz Pipwarrick", house: houses.sample, subject: Subject.all.sample, username: "p9", password: "password")
Professor.create(name: "Mayhallow Vorkilldon", house: houses.sample, subject: Subject.all.sample, username: "p0", password: "password")

Apprentice.all.each do |app|
    rand(1..5).times do ApprenticeSubject.create(apprentice: app, subject: Subject.all.sample)
    end
end
