import React, { useEffect, useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import { SliderComponent } from "../../components/RecipeCard";
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

  useEffect(() => {
    fetch("http://localhost:5000/recipes")
      .then((response) => response.json())
      .then((data) => setData(data));
  }, []);

  return (
    <div className="recipes">
      <div>
        <SliderComponent recipes={data} />
      </div>
    </div>
  );
};
