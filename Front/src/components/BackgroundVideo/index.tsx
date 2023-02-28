import React from "react";
import backgroundVideo from "./video.mp4";

export const BackgroundVideo = () => {
  return (
    <header className="sm:relative sm:flex sm:items-center sm:justify-center sm:h-[400px] sm:mb-12 sm:overflow-hidden">
      <div className="sm:flex sm:flex-col gap-10">
        <div className="relative z-30 p-5 text-2xl text-white bg-black bg-opacity-4 rounded-xl">
          Bienvenue sur Big Mood<span className="text-yellow-400">.</span>{" "}
        </div>
        <div className="relative z-30 p-5 text-2xl text-white ">
          Santé. Savoir. Pouvoir.
        </div>
      </div>
      <video
        autoPlay
        loop
        muted
        className="absolute z-10 w-auto min-w-full min-h-full max-w-none"
      >
        <source src={backgroundVideo} />
        Your browser does not support the video tag.
      </video>
    </header>
  );
};
