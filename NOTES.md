INGREDIENTS.liquor_type
-----------
1) Rum
2) Tequila
3) Vodka
4) Etc.


RECIPES
-------
1) Tequila Sunrise
2) Margarita

INGREDIENTS + RECIPES.description


User
 admin : boolean
 
 def admins
   user.where(admin: true)
 end
 
 ingredient.where(liquor_type)
 