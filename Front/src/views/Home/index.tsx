import React, { useEffect, useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
interface Recipe {
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
  //   const [data, setData] = useState([]);
  useEffect(() => {
    fetch("http://localhost:5000/recipes")
      .then((response) => response.json())

      .then((data) => setData(data));
  }, []);

  return (
    <div className="recipes">
      {data.map((recipe) => (
        <div></div>
        // <h1>{recipe.title}</h1>
      ))}
    </div>
  );
};
