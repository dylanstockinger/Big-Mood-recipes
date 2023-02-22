import React, { useState } from "react";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";
import { Recipe } from "../../views/Home/index";
// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";
// import required modules
import { Navigation } from "swiper";

export interface SliderComponentProps {
  recipes: Recipe[];
}
export const SliderComponent = (recipes: SliderComponentProps) => {
  console.log(recipes.recipes);

  const dataRecipe = recipes.recipes;
  return (
    <div className="recipe-card">
      {dataRecipe.map((recipe) => (
        <Swiper
          key={recipe.id}
          navigation={true}
          modules={[Navigation]}
          className="mySwiper"
        >
          <SwiperSlide>
            <img
              className="object-fill w-90 h-96"
              src={recipe.picture}
              alt="image slide 1"
            />
          </SwiperSlide>
        </Swiper>
      ))}
    </div>
  );
};
