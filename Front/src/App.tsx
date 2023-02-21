import { Home } from "./views/Home";
import { About } from "./views/About";
import RecipeCard from "../../Front/src/components/RecipeCard";
import { Navbar } from "./components/Navbar";

export default function App() {
  return (
    <>
      <Navbar />
      <RecipeCard />
      <Home />
    </>
  );
}
