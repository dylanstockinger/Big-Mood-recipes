import React, { useState, useRef, useEffect } from "react";
import { Recipe } from "../../views/Home/index";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Pagination, Autoplay } from "swiper";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/autoplay";

export interface SliderComponentProps {
  recipes: Recipe[];
}

export const SliderComponent = (recipes: SliderComponentProps) => {
  const navigationPrevRef = useRef(null);
  const navigationNextRef = useRef(null);
  const dataRecipe = recipes.recipes;
  const [randomRecipe, setRandomRecipe] = useState<Recipe[]>();
  const shuffled = dataRecipe.sort(() => Math.random() - 0.5).slice(0, 5);
  const shuffledDifficulty = dataRecipe
    .filter((recipe) => recipe.difficulty == "Facile")
    .slice(0, 5);

  console.log(dataRecipe.filter((recipe) => recipe.difficulty == "Facile"));

  return (
    <div className="sm:flex sm:flex-wrap sm:justify-center  ">
      <section className="flex sm:m-8 justify-center ">
        <div className="innver__container">
          <h1 className="mt-[1rem] sm:mt-8 mb-4 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            <span className="text-yellow-400 ">5</span> recettes aléatoire pour
            votre plaisir !
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[500px]  w-[350px] sm:h-[550px] sm:scale-90 sm:hover:scale-100 sm:transition   h-full slider sm:shadow-2xl  shadow-lg bg-gradient-to-r from-slate-100 via-slate-200 to-gray-100 rounded-xl bg-white "
              modules={[Navigation, Pagination, Autoplay]}
              speed={400}
              autoplay={{
                delay: 13000,
              }}
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
              {shuffled.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-full w-full  w-300px">
                    <img
                      className="sm:w-full w-full  m-auto "
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <h1 className="text-2xl mt-5">{recipe.title}</h1>
                    <p className=" sm:leading-9 px-10 sm:text-base mt-5">
                      {recipe.description}
                    </p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className="mb-[3.5rem] sm:mb-[7rem] text-black bg-yellow-500 hover:bg-black text-white focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
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
          <p className="sm:leading-normal sm:text-3xl sm:mb-10 mt-6 p-15  ">
            Avec O'Food sentez-vous libre de cuisiner selon vos envies. Pas de
            régimes particulier, juste de la pleine conscience et l'envie de
            cuisiner meilleur. Aujourd'hui le fait de se limiter, de se
            controler etc. devient de plus en plus normal. Par ailleurs il est
            important de préciser que de tels comportements auront un impact sur
            votre santé mentale. Ce n'est pas ce que nous cherchons.
          </p>
        </div>
      </article>
      <section className="flex sm:m-8 justify-center sm:hover:">
        <div className="innver__container">
          <h1 className="mt-[1rem] sm:mt-8 mb-4 mt-3 sm:text-5xl text-2xl mb-8 text-center">
            Les <span className="text-yellow-400 ">5</span> recettes les plus
            simples à faire
          </h1>
          <div className=" ">
            <Swiper
              className="sm:w-[500px]  w-[350px] sm:h-[550px] sm:scale-90 sm:hover:scale-100 sm:transition scale-80 hover:scale-90  transition h-full slider sm:shadow-2xl  shadow-lg bg-gradient-to-r from-slate-100 via-slate-200 to-gray-100 rounded-xl bg-white "
              modules={[Navigation, Pagination, Autoplay]}
              pagination={{ clickable: true }}
              speed={400}
              autoplay={{
                delay: 13000,
              }}
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
              {shuffledDifficulty.map((recipe) => (
                <SwiperSlide className=" flex justify-center" key={recipe.id}>
                  <div className=" flex flex-col text-center justify-center  sm:w-full w-full  w-300px">
                    <img
                      className="sm:w-full w-full  m-auto "
                      src={`/recipesImage/${recipe.picture}`}
                      alt=""
                    />
                    <h1 className="text-2xl mt-5">{recipe.title}</h1>
                    <p className=" sm:leading-9 px-10 sm:text-base mt-5">
                      {recipe.description}
                    </p>
                    <div className="text-center mt-[30px]">
                      <button
                        type="button"
                        className="sm:mb-[7rem] mb-[3.5rem] text-black bg-yellow-500 hover:bg-black text-white focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center dark:focus:ring-yellow-900"
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
          <p className="sm:leading-normal	 leading-snug sm:text-3xl sm:mb-10 mt-6 p-15  ">
            Prenez le temps de cuisiner des recettes simples et variées avec
            notre séléction spécialement faite pour vous ! Vous allez voir,
            cuisiner est un vrai jeu d'enfant quand on s'y mets joyeusement.
          </p>
        </div>
      </article>
    </div>
  );
};
