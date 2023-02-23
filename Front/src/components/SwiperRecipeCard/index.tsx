import React, { useState, useRef } from "react";
import { Recipe } from "../../views/Home/index";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Pagination } from "swiper";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

export interface SliderComponentProps {
  recipes: Recipe[];
}

export const SliderComponent = (recipes: SliderComponentProps) => {
  const navigationPrevRef = useRef(null);
  const navigationNextRef = useRef(null);
  const dataRecipe = recipes.recipes;

  // feature servant a générer les recettes aléatoires

  return (
    <div className="sm:flex sm:flex-wrap sm:justify-center  ">
      <section className="flex sm:m-8 justify-center">
        <div className="innver__container">
          <h1 className="sm:mt-8 mb-8 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            Les <span className="text-green-600 ">5</span> recettes les mieux
            notées
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[800px] h-full slider shadow-2xl rounded-xl bg-white w-[350px] h-[500px] "
              modules={[Navigation, Pagination]}
              pagination={{ clickable: true }}
              slidesPerView={1}
              navigation={{
                prevEl: navigationPrevRef.current,
                nextEl: navigationNextRef.current,
              }}
              onInit={(swiper) => {
                swiper.navigation.init();
                swiper.navigation.update();
              }}
            >
              {dataRecipe.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-900px w-300px">
                    <h1 className="sm:text-[40px] m-10">{recipe.title}</h1>
                    <img
                      className="sm:w-[700px] m-auto"
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" mb-12 sm:mb-[3rem] mb-[1.8rem] text-white bg-green-700 hover:bg-green-800 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
                      >
                        Show the recipe
                      </button>
                    </div>
                  </div>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </section>
      <section className="flex sm:m-8 flex-row justify-center">
        <div className="innver__container">
          <h1 className="sm:mt-8 mb-8 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            Les <span className="text-green-600 ">5</span> recettes les plus
            faciles
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[800px] h-full slider shadow-2xl rounded-xl bg-white w-[350px] h-[500px]"
              modules={[Navigation, Pagination]}
              slidesPerView={1}
              pagination={{ clickable: true }}
              navigation={{
                prevEl: navigationPrevRef.current,
                nextEl: navigationNextRef.current,
              }}
              onInit={(swiper) => {
                swiper.navigation.init();
                swiper.navigation.update();
              }}
            >
              {dataRecipe.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-900px w-300px">
                    <h1 className="sm:text-[40px] m-10">{recipe.title}</h1>
                    <img
                      className="sm:w-[700px] m-auto"
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" sm:mb-[3rem] mb-[1.8rem] text-white bg-green-700 hover:bg-green-800 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
                      >
                        Show the recipe
                      </button>
                    </div>
                  </div>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </section>
      <section className="flex sm:m-8 flex-row justify-center">
        <div className="innver__container">
          <h1 className="sm:mt-8 mb-8 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            <span className="text-green-600 ">5</span> recettes aléatoire
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[800px] h-full slider shadow-2xl  bg-white rounded-xl w-[350px] h-[500px] "
              modules={[Navigation, Pagination]}
              pagination={{ clickable: true }}
              slidesPerView={1}
              navigation={{
                prevEl: navigationPrevRef.current,
                nextEl: navigationNextRef.current,
              }}
              onInit={(swiper) => {
                swiper.navigation.init();
                swiper.navigation.update();
              }}
            >
              {dataRecipe.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-900px w-300px">
                    <h1 className="sm:text-[40px] m-10">{recipe.title}</h1>
                    <img
                      className=" sm:w-[700px] m-auto"
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" sm:mb-[3rem] mb-[1.8rem] text-white bg-green-700 hover:bg-green-800 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
                      >
                        Show the recipe
                      </button>
                    </div>
                  </div>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </section>
      <section className="flex sm:m-8 flex-row justify-center">
        <div className="innver__container">
          <h1 className="sm:mt-8 mb-8 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            Les <span className="text-green-600 ">5</span> recettes plus
            difficiles
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[800px] h-full slider shadow-2xl bg-white rounded-xl w-[350px] h-[500px] "
              modules={[Navigation, Pagination]}
              slidesPerView={1}
              pagination={{ clickable: true }}
              navigation={{
                prevEl: navigationPrevRef.current,
                nextEl: navigationNextRef.current,
              }}
              onInit={(swiper) => {
                swiper.navigation.init();
                swiper.navigation.update();
              }}
            >
              {dataRecipe.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-900px w-300px">
                    <h1 className="sm:text-[40px] m-10">{recipe.title}</h1>
                    <img
                      className="sm:w-[700px] m-auto"
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" sm:mb-[3rem] mb-[1.8rem] text-white bg-green-700 hover:bg-green-800 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
                      >
                        Show the recipe
                      </button>
                    </div>
                  </div>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </section>
    </div>
  );
};
