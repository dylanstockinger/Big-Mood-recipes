import { Home } from "./views/Home";
import { About } from "./views/About";
import { Navbar } from "./components/Navbar";
import { BackgroundVideo } from "./components/BackgroundVideo/index";

export default function App() {
  return (
    <>
      <Navbar />
      <BackgroundVideo />
      <Home />
    </>
  );
}
