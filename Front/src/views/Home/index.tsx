import React, { useEffect, useState } from "react";

import { SliderComponent } from "../../components/SwiperRecipeCard";
export interface Recipe {
  title: string;
  difficulty: string;
  picture: string;
  description: string;
  rate: number;
  id: number;
  cookingTime: number;
  ingredientList: string;
  steps: string;
}

export const Home = () => {
  const [data, setData] = useState<Recipe[]>([]);
  //   const [data, setData] = useState([]);

  // fetch data from the back
  useEffect(() => {
    (async () => {
      await fetch("http://localhost:5000/recipes", {
        // make header for cors error
        headers: { "Content-Type": "application/json" },
      })
        .then((response) => response.json())
        .then((data) => setData(data));
    })(),
      [];
  });

  return (
    <div className="recipes">
      <div>
        {/* on explique que recipes vaut les données de data  */}
        <SliderComponent recipes={data} />
      </div>
    </div>
  );
};
