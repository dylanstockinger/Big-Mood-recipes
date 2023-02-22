import React, { useState } from "react";
import { Recipe } from "../../views/Home/index";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

export interface SliderComponentProps {
  recipes: Recipe[];
}

function SampleNextArrow(props) {
  const { className, style, onClick } = props;
  return (
    <div
      className={className}
      style={{ ...style, display: "block", background: "black" }}
      onClick={onClick}
    />
  );
}
function SamplePrevArrow(props) {
  const { className, style, onClick } = props;
  return (
    <div
      className={className}
      style={{
        ...style,
        display: "block",
        background: "black",
      }}
      onClick={onClick}
    />
  );
}

export const SliderComponent = (recipes: SliderComponentProps) => {
  const settings = {
    dots: true,
    infinite: true,
    speed: 200,
    slidesToShow: 1,
    slidesToScroll: 1,
    nextArrow: <SampleNextArrow />,
    prevArrow: <SamplePrevArrow />,
  };
  const dataRecipe = recipes.recipes;

  // feature servant a générer les recettes aléatoires

  return (
    <div className="max-w-[800px] h-[780px] w-full m-auto py-16 px-4 relative ">
      <h1 className="text-5xl mb-8">
        {" "}
        Les <span className="text-green-600">5</span> recettes les mieux notées
        !
      </h1>

      <Slider {...settings}>
        {dataRecipe.map((recipe) => (
          <div className="  inline-flex rounded-md shadow-sm">
            <h1 className="text-2xl">{recipe.title}</h1>
            <img
              className="w-full"
              src={`/recipesImage/${recipe.picture}`}
              alt=""
            />
            <p>{recipe.description}</p>
            <div className="text-center mb-[10px] mt-[30px]">
              <button
                type="button"
                className=" text-white bg-green-700 hover:bg-green-800 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 dark:focus:ring-yellow-900"
              >
                Show the recipe
              </button>
            </div>
          </div>
        ))}
      </Slider>
    </div>
  );
};
{
}
