import { useState } from "react";

export const SearchBar = ({ onSearch }: any) => {
  const [query, setQuery] = useState("");

  function handleSubmit(event: any) {
    event.preventDefault();
    console.log(query);

    onSearch(query);
  }
  return (
    <form
      method="GET"
      onSubmit={handleSubmit}
      className="max-w-md m-auto mt-9 flex "
    >
      <input
        type="text"
        placeholder="Rechercher une recette"
        value={query}
        onChange={(event) => setQuery(event.target.value)}
        className="flex-1 border border-gray-300 rounded-l-md py-2 px-4 focus:outline-none focus:border-blue-500"
      />

      <button
        type="submit"
        className="bg-yellow-400 hover:bg-black hover:text-white text-white font-bold py-2 px-4 rounded-r-md"
      >
        Rechercher
      </button>
    </form>
  );
};
