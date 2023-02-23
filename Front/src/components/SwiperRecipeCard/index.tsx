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
              className="sm:w-[800px] h-full slider shadow-2xl bg-gradient-to-r from-slate-100 via-slate-200 to-gray-100 rounded-xl bg-white  w-[350px] h-[500px] "
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
                  <div className=" flex flex-col text-center justify-center  sm:w-full  w-300px">
                    <img
                      className="sm:w-full  m-auto "
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <h1 className="text-2xl mt-5">{recipe.title}</h1>
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" mb-12 sm:mb-[3rem] mb-[1.8rem] text-black bg-yellow-400 hover:bg-gray-700 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
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

      <article className=" m-auto text-center  justify-center  sm:w-[800px] w-[300px] ">
        <div className="">
          <p className="sm:leading-normal	 leading-snug sm:text-4xl sm:mb-10 mt-6 p-15  ">
            Avec O'Food sentez-vous libre de cuisiner selon vos envies. Pas de
            régimes particulier, juste de la pleine conscience et l'envie de
            cuisiner meilleur. Aujourd'hui le fait de se limiter, de se
            controler etc. devient de plus en plus normal. Par ailleurs il est
            important de préciser que de tels comportements auront un impact sur
            votre santé mentale. Ce n'est pas ce que nous cherchons.
          </p>
        </div>
      </article>
      <section className="flex sm:m-8 justify-center">
        <div className="innver__container">
          <h1 className="sm:mt-8 mb-8 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            Les <span className="text-green-600 ">5</span> recettes les mieux
            notées
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[800px] h-full slider shadow-2xl bg-gradient-to-r from-slate-100 via-slate-200 to-gray-100 rounded-xl bg-white  w-[350px] h-[500px] "
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
                  <div className=" flex flex-col text-center justify-center  sm:w-full  w-300px">
                    <img
                      className="sm:w-full  m-auto "
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <h1 className="text-2xl mt-5">{recipe.title}</h1>
                    <p className="p-2">{recipe.description}</p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className=" mb-12 sm:mb-[3rem] mb-[1.8rem] text-black bg-yellow-400 hover:bg-gray-700 focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
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

      <article className=" m-auto text-center  justify-center  sm:w-[800px] w-[300px] ">
        <div className="">
          <p className="sm:leading-normal	 leading-snug sm:text-4xl sm:mb-10 mt-6 p-15  ">
            Avec O'Food sentez-vous libre de cuisiner selon vos envies. Pas de
            régimes particulier, juste de la pleine conscience et l'envie de
            cuisiner meilleur. Aujourd'hui le fait de se limiter, de se
            controler etc. devient de plus en plus normal. Par ailleurs il est
            important de préciser que de tels comportements auront un impact sur
            votre santé mentale. Ce n'est pas ce que nous cherchons.
          </p>
        </div>
      </article>
    </div>
  );
};
