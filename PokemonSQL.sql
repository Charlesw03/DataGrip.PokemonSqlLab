            -- 2 group questions
-- SELECT * from pokemon.types
-- select name from pokemon.pokemons where id = 45 evevee
-- select count(id) from Pokemon.pokemons - 656
-- select count(id)from pokemon.types - 18
-- select count(id) from pokemon.pokemons where secondary_type is not null- 316

           -- 3 what is each pokemons primary type
# SELECT
#    pokemon.pokemons.name, pokemon.types.name
# FROM
#     pokemon.pokemons,
#     pokemon.types
# WHERE
#     primary_type = pokemon.types.id;
#
             -- secondary types of Rufflet
  -- select pokemon.pokemons.name, pokemon.types.name
# from pokemon.pokemons, pokemon.types
# where pokemon.pokemons.name = 'Rufflet'
# and
# secondary_type = pokemon.types.id;
           -- the pokemons that belong to trainer 303 - waliford, vileplume
# select trainerID,pokemon.pokemon_trainer.pokemon_id, pokemon.pokemons.name
#
# from pokemon.pokemon_trainer, pokemon.pokemons
#
# where trainerID = 303
#
# and pokemon_id =  pokemon.pokemons.id;

  -- 558 pokemon have a secondary type of poison(associated to 7 in pokemon.types)

# select count(pokemon.pokemons.id)
# from pokemon.pokemons, pokemon.types
# where secondary_type = 7;

  -- all the primary types with pokemon name and pokemon type

# select pokemon.pokemons.primary_type, pokemon.pokemons.name, pokemon.types.name
# from pokemon.types, pokemon.pokemons
# where pokemon.pokemons.primary_type = pokemon.types.id
-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
       -- number of level 100 pokemon associated to a trainer id
# select trainerID,count(pokelevel)
# from pokemon.pokemon_trainer
# where pokelevel=100
# group by trainerID



