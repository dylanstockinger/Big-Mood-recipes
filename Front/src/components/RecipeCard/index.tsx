import React, { useState } from "react";
import { Recipe } from "../../views/Home/index";
export interface SliderComponentProps {
  recipes: Recipe[];
}

export const SliderComponent = (recipes: SliderComponentProps) => {
  const dataRecipe = recipes.recipes;

  // feature servant a générer les recettes aléatoires

  return (
    <div className="recipe-card ">
      {dataRecipe.map((recipe) => (
        <img
          className="object-fill w-90 h-96"
          src={`/recipesImage/${recipe.picture}`}
          alt="image slide 1"
        />
      ))}
    </div>
  );
};
