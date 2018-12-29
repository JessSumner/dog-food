class DogFood
  def self.compare
    food_choices.each do |food_choice|
      new_food_comparison(food_choice)
    end
  end

  def self.new_food_comparison(food_2)
    ingredient_list = common_ingredients(current_food[:ingredients], food_2[:ingredients])
    puts "#{food_2[:name]} shares #{ingredient_list.count} with #{current_food[:name]}. The common ingredients are: #{ingredient_list}."
    puts "\n"
  end

  def self.common_ingredients(current_ingredient_set, ingredient_set_2)
    current_set = current_ingredient_set.map(&:downcase)
    ingredient_set_2.select do |ingredient|
      current_set.include?(ingredient.downcase)
    end
  end

  def self.current_food
    lamb_and_brown_rice
  end

  def self.food_choices
    [
      legume_and_duck_meal,
      sweet_potato_and_bison,
      potato_and_duck,
      sweet_potato_and_fish,
      sweet_potato_and_venison,
      duck_and_pear,
    ]
  end

  def tried_food
    []
  end

  def self.lamb_and_brown_rice
    {
      name: "Lamb and Brown Rice by Natural Balance",
      ingredients:
        [
          "Lamb Meal", "Brown Rice", "Brewers Rice", "Rice Bran", "Canola Oil (Preserved With Mixed Tocopherols And Lactic Acid)", "Lamb", "Dried Tomato Pomace", "Brewers Dried Yeast", "Natural Flavor", "Salt", "Potassium Chloride", "Taurine", "Vitamin E Supplement", "L-Ascorbyl-2-Polyphosphate", "Inositol", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Beta-Carotene", "Pyridoxine Hydrochloride", "Vitamin B12 Supplement", "Menadione Sodium Bisulfite Complex", "Vitamin D3 Supplement", "Folic Acid", "Biotin", "Ferrous Sulfate", "Iron Proteinate", "Zinc Proteinate", "Zinc Oxide", "Copper Sulfate", "Manganese Proteinate", "Copper Proteinate", "Manganous Oxide", "Calcium Iodate", "Sodium Selenite", "Choline Chloride", "Citric Acid", "Rosemary Extract"
        ]
    }
  end

  def self.legume_and_duck_meal
    {
      name: "Legume and Duck Meal by Natural Balance",
      ingredients:
        [
          "Duck Meal", "Garbanzo Beans", "Peas", "Pea Starch", "Duck", "Natural Flavor", "Canola Oil(Preserved with Mixed Tocopherols)", "Dried Beet Pulp", "Brewers Dried Yeast", "Flaxseed", "Salmon Oil (Preserved with Mixed Tocopherols)", "Salt Potassium Chloride", "Dl-Methionine", "Taurine", "Choline Chloride", "Vitamin E Supplement", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Vitamin D3 Supplement", "Pyridoxine Hydrochloride", "Folic Acid", "Biotin", "Vitamin B12 Supplement", "Zinc Proteinate", "Zinc Sulfate", "Ferrous Sulfate", "Iron Proteinate", "Copper Sulfate", "Copper Proteinate", "Manganese Sulfate", "Manganese Proteinate", "Calcium Iodate", "Sodium Selenite", "Citric Acid (Preservative)", "Rosemary Extract"
        ]
    }
  end

  def self.sweet_potato_and_bison
    {
      name: "Sweet Potato and Bison by Natural Balance",
      ingredients:
        [
          "Sweet Potatoes", "Bison", "Potato Protein", "Pea Protein", "Canola Oil (Preserved with Mixed Tocopherols)", "Dicalcium Phosphate", "Natural Flavor", "Salmon Oil (Preserved with Mixed Tocopherols)", "Dried Potato Products", "Salt", "Zinc Proteinate",  "Zinc Sulfate", "Ferrous Sulfate", "Iron Proteinate", "Copper Sulfate", "Copper Proteinate", "Manganese Sulfate", "Manganese Proteinate", "Calcium Iodate", "Sodium Selenite", "Calcium Carbonate", "Vitamin E Supplement", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Vitamin D3 Supplement", "Pyridoxine Hydrochloride", "Folic Acid", "Biotin", "Vitamin B12 Supplement", "Flaxseed", "Dl-Methionine", "Choline Chloride", "Taurine", "Mixed Tocopherols (Preservative)", "Rosemary Extract", "Green Tea Extract", "Spearmint Extract"
        ]
    }
  end

  def self.potato_and_duck
    {
      name: "Potato and Duck by Natural Balance",
      ingredients:
        [
          "Sweet Potatoes", "Bison", "Potato Protein", "Pea Protein", "Canola Oil (Preserved with Mixed Tocopherols)", "Dicalcium Phosphate", "Natural Flavor", "Salmon Oil (Preserved with Mixed Tocopherols)", "Dried Potato Products", "Salt", "Zinc Proteinate",  "Zinc Sulfate", "Ferrous Sulfate", "Iron Proteinate", "Copper Sulfate", "Copper Proteinate", "Manganese Sulfate", "Manganese Proteinate", "Calcium Iodate", "Sodium Selenite", "Calcium Carbonate", "Vitamin E Supplement", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Vitamin D3 Supplement", "Pyridoxine Hydrochloride", "Folic Acid", "Biotin", "Vitamin B12 Supplement", "Flaxseed", "Dl-Methionine", "Choline Chloride", "Taurine", "Mixed Tocopherols (Preservative)", "Rosemary Extract", "Green Tea Extract", "Spearmint Extract"
        ]
    }
  end

  def self.sweet_potato_and_fish
    {
      name: "Sweet Potato and Fish by Natural Balance",
      ingredients:
        [
          "Sweet Potatoes", "Salmon", "Menhaden Fish Meal", "Potato Protein", "Canola Oil (Preserved with Mixed Tocopherols)", "Natural Flavor", "Dried Potato Products", "Salt", "Salmon Oil (Preserved with Mixed Tocopherols)", "Dl-Methionine", "Zinc Proteinate", "Zinc Sulfate", "Ferrous Sulfate", "Iron Proteinate", "Copper Sulfate", "Copper Proteinate", "Manganese Sulfate", "Manganese Proteinate", "Calcium Iodate", "Sodium Selenite", "Vitamin E Supplement", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Vitamin D3 Supplement", "Pyridoxine Hydrochloride", "Folic Acid", "Biotin", "Vitamin B12 Supplement", "Choline Chloride", "Flaxseed", "Potassium Chloride", "Taurine", "Citric Acid (Preservative)", "Mixed Tocopherols (Preservative)", "Rosemary Extract"
        ]
    }
  end

  def self.sweet_potato_and_venison
    {
      name: "Sweet Potato and Venison by Natural Balance",
      ingredients:
        [
          "Sweet Potatoes", "Venison", "Pea Protein", "Potato Protein", "Canola Oil (Preserved with Mixed Tocopherols)", "Brewers Dried Yeast", "Natural Flavor", "Dicalcium Phosphate", "Salmon Oil (Preserved with Mixed Tocopherols)", "Flaxseed", "Dried Potato Products", "Calcium Carbonate", "Salt", "Dl-Methionine", "Zinc Proteinate",  "Zinc Sulfate", "Ferrous Sulfate", "Iron Proteinate", "Copper Sulfate", "Copper Proteinate", "Manganese Sulfate", "Manganese Proteinate", "Calcium Iodate", "Sodium Selenite", "Choline Chloride", "Vitamin E Supplement", "Niacin", "D-Calcium Pantothenate", "Vitamin A Supplement", "Riboflavin Supplement", "Thiamine Mononitrate", "Vitamin D3 Supplement", "Pyridoxine Hydrochloride", "Folic Acid", "Biotin", "Vitamin B12 Supplement", "Taurine", "Mixed Tocopherols (Preservative)", "Rosemary Extract", "Green Tea Extract", "Spearmint Extract"
        ]
    }
  end

  def self.duck_and_pear
    {
      name: "Duck and Pear by Acana",
      ingredients:
        [
          "Deboned duck", "duck meal", "whole lentils", "whole peas", "duck liver", "duck fat", "lentil fiber", "pears", "pollock oil", "pea starch", "natural duck flavor", "duck cartilage", "pumpkin", "salt", "mixed tocopherols (preservative)", "zinc proteinate", "dried kelp", "calcium pantothenate", "vitamin A acetate", "freeze dried duck liver", "copper proteinate", "chicory root", "turmeric", "dried lactobacillus acidophilus fermentation product", "dried bifidobacterium animalis fermentation product", "dried lactobacillus casei fermentation product"
        ]
    }
  end
end

DogFood.compare
