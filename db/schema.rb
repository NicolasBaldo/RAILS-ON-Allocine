# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_07_104033) do
  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "genre"
    t.text "synopsis"
    t.string "director"
    t.float "allocine_rating"
    t.integer "my_rating"
    t.boolean "already_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

# COMMANDE POUR RETROUVER LE FILM DANS L'INDEX : 
# Ex : movies = Movie.find_by(name:"l'exorciste")

# COMMANDE POUR ME POSITIONNER SUR LE FILM DONT JE VEUT CHANGER L'INFORMATION : 
# Movie.where(name: "L'exorciste").first

# COMMANDE POUR CHANGER L'INFORMATION CHOISIE : 
# movie.genre = "Comédie"  
# ! Ne pas oublier la commande movie.save ! 

# COMMANDE POUR CRÉER DES FILMS ALÉATOIREMENT EN UTILSANT LA GEM FAKER : 
#100.times do
#Movie.create(
  #name: Faker::Movie.title,
  #year: rand(1900..2020),
  #genre: ["action", "horreur", "comédie", "drame"].sample,
  #synopsis: Faker::Lorem.paragraph_by_chars(number: rand(100..200)),
  #director: Faker::Name.name,
  #allocine_rating: rand(0.0..5.0).round(1),
  #my_rating: nil,
  #already_seen: false
#)
#end