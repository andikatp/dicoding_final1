import '../models/recipe.dart';

List<Recipe> data = [
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1622973536968-3ead9e780960?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    name: 'Spaghetti Bolognese',
    createdBy: 'John Doe',
    ingredients: [
      'spaghetti',
      'ground beef',
      'onion',
      'garlic',
      'tomato sauce'
    ],
    steps: [
      'Cook spaghetti according to package instructions.',
      'Brown ground beef in a pan.',
      'Add onion and garlic, and cook until softened.',
      'Add tomato sauce and simmer for 10 minutes.',
      'Serve over cooked spaghetti.'
    ],
    duration: 30,
    kcalories: 500,
    servings: 4,
    isFavorite: false,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1544378730-8b5104b18790?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1149&q=80',
    name: 'Chicken Parmesan',
    createdBy: 'Jane Smith',
    ingredients: [
      'chicken breasts',
      'bread crumbs',
      'parmesan cheese',
      'marinara sauce'
    ],
    steps: [
      'Preheat oven to 400°F.',
      'Combine bread crumbs and parmesan cheese in a shallow dish.',
      'Dredge chicken in the mixture, pressing to coat.',
      'Place chicken in a baking dish and top with marinara sauce.',
      'Bake for 25 minutes.',
      'Serve hot.'
    ],
    duration: 45,
    kcalories: 600,
    servings: 4,
    isFavorite: false,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1676300185579-ed2b14891d82?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    name: 'Beef Stroganoff',
    createdBy: 'Mark Johnson',
    ingredients: [
      'beef sirloin',
      'onion',
      'mushrooms',
      'beef broth',
      'sour cream',
      'egg noodles'
    ],
    steps: [
      'Cook egg noodles according to package instructions.',
      'Sear beef in a pan until browned on both sides.',
      'Remove beef from pan and set aside.',
      'Add onion and mushrooms to the pan and cook until softened.',
      'Add beef broth and bring to a simmer.',
      'Return beef to the pan and simmer for 10 minutes.',
      'Remove from heat and stir in sour cream.',
      'Serve over cooked egg noodles.'
    ],
    duration: 60,
    kcalories: 800,
    servings: 6,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1528736235302-52922df5c122?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1254&q=80',
    name: 'Grilled Cheese Sandwich',
    createdBy: 'Sarah Lee',
    ingredients: ['bread', 'cheese', 'butter'],
    steps: [
      'Butter one side of each slice of bread.',
      'Place cheese between the slices of bread, with the buttered sides facing outwards.',
      'Heat a pan over medium heat.',
      'Place the sandwich in the pan and cook until both sides are golden brown and the cheese is melted.',
      'Serve hot.'
    ],
    duration: 15,
    kcalories: 400,
    servings: 1,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1564834724105-918b73d1b9e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
    name: 'Vegetable Stir Fry',
    createdBy: 'David Kim',
    ingredients: ['mixed vegetables', 'soy sauce', 'sesame oil', 'garlic'],
    steps: [
      'Heat sesame oil in a wok or large pan.',
      'Add garlic and cook until fragrant.',
      'Add mixed vegetables and stir-fry until cooked through.',
      'Add soy sauce and stir to combine.',
      'Serve hot over rice.'
    ],
    duration: 20,
    kcalories: 300,
    servings: 2,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1619221882161-95135fca04e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    name: 'Beef Tacos',
    createdBy: 'Laura Martinez',
    ingredients: [
      'ground beef',
      'taco seasoning',
      'tortillas',
      'lettuce',
    ],
    steps: [
      'Brown ground beef in a pan.',
      'Add taco seasoning and cook for 2 minutes.',
      'Heat tortillas in a separate pan.',
      'Assemble tacos with beef, lettuce, and any other desired toppings.',
      'Serve hot.'
    ],
    duration: 25,
    kcalories: 450,
    servings: 4,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1595908129746-57ca1a63dd4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Mushroom Risotto',
    createdBy: 'Emily Chen',
    ingredients: [
      'arborio rice',
      'mushrooms',
      'chicken broth',
      'onion',
      'garlic',
      'parmesan cheese'
    ],
    steps: [
      'Heat chicken broth in a pot.',
      'In a separate pan, sauté onion and garlic until softened.',
      'Add arborio rice and cook for 1 minute.',
      'Add chicken broth one ladle at a time, stirring constantly and waiting for the liquid to be absorbed before adding more.',
      'Add sliced mushrooms and continue cooking until rice is tender and creamy.',
      'Stir in parmesan cheese.',
      'Serve hot.'
    ],
    duration: 45,
    kcalories: 700,
    servings: 4,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1494597706938-de2cd7341979?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1204&q=80',
    name: 'Omelette',
    createdBy: 'Alex Lee',
    ingredients: ['eggs', 'milk', 'butter', 'cheese', 'ham'],
    steps: [
      'Whisk eggs and milk in a bowl.',
      'Melt butter in a pan.',
      'Pour egg mixture into the pan and cook until the bottom is set.',
      'Add cheese and ham to one half of the omelette.',
      'Fold the other half over the filling and cook for an additional 2 minutes.',
      'Serve hot.'
    ],
    duration: 15,
    kcalories: 350,
    servings: 1,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1598103442097-8b74394b95c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
    name: 'Roasted Chicken',
    createdBy: 'Michael Brown',
    ingredients: [
      'whole chicken',
      'lemon',
      'garlic',
      'rosemary',
      'butter',
      'salt',
      'pepper'
    ],
    steps: [
      'Preheat oven to 375°F.',
      'Rinse and pat dry the chicken.',
      'Stuff the chicken with lemon, garlic, and rosemary.',
      'Rub butter on the skin and sprinkle with salt and pepper.',
      'Place the chicken in a roasting pan and roast for 1 hour and 30 minutes, or until the internal temperature reaches 165°F.',
      'Let the chicken rest for 10 minutes before carving.',
      'Serve hot.'
    ],
    duration: 120,
    kcalories: 1200,
    servings: 6,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1567608285969-48e4bbe0d399?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    name: 'Pesto Pasta',
    createdBy: 'Julia Hernandez',
    ingredients: [
      'pasta',
      'basil',
      'garlic',
      'pine nuts',
      'olive oil',
      'parmesan cheese'
    ],
    steps: [
      'Cook pasta according to package instructions.',
      'In a food processor, blend basil, garlic, pine nuts, and olive oil until smooth.',
      'Toss pasta with pesto sauce.',
      'Serve hot with grated parmesan cheese.'
    ],
    duration: 25,
    kcalories: 550,
    servings: 4,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1611599537845-1c7aca0091c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Grilled Salmon',
    createdBy: 'David Kim',
    ingredients: [
      'salmon fillet',
      'olive oil',
      'lemon',
      'garlic',
      'dill',
      'salt',
      'pepper'
    ],
    steps: [
      'Preheat grill to medium-high heat.',
      'In a small bowl, whisk together olive oil, lemon juice, minced garlic, chopped dill, salt, and pepper.',
      'Brush the salmon fillet with the olive oil mixture.',
      'Grill the salmon fillet for 5-6 minutes on each side or until cooked through.',
      'Serve hot.'
    ],
    duration: 20,
    kcalories: 400,
    servings: 2,
  ),
  Recipe(
    imageUrl:
        'https://images.unsplash.com/photo-1601312540037-095ace539abb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Banana Bread',
    createdBy: 'Sophia Lee',
    ingredients: [
      'ripe bananas',
      'flour',
      'baking powder',
      'baking soda',
      'salt',
      'sugar',
      'eggs',
      'vegetable oil',
      'vanilla extract'
    ],
    steps: [
      'Preheat oven to 350°F.',
      'Mash ripe bananas in a large mixing bowl.',
      'Add flour, baking powder, baking soda, salt, and sugar to the bowl and mix well.',
      'In a separate bowl, whisk together eggs, vegetable oil, and vanilla extract.',
      'Add wet ingredients to the dry ingredients and mix until just combined.',
      'Pour the batter into a greased loaf pan and bake for 50-60 minutes or until a toothpick comes out clean.',
      'Let the banana bread cool in the pan for 10 minutes before transferring it to a wire rack to cool completely.',
      'Serve warm or at room temperature.'
    ],
    duration: 75,
    kcalories: 300,
    servings: 8,
  ),
];
