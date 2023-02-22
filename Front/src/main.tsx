import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./styles/index.css";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import { Home } from "./views/Home";
import { About } from "./views/About";
import { Login } from "./views/Login";
import { Recipes } from "./views/Recipes";
import { Navbar } from "./components/Navbar";

export const router = createBrowserRouter([
  {
    path: "/",

    element: <App />,
  },
  {
    path: "/about",
    element: <About />,
  },
  {
    path: "/login",
    element: <Login />,
  },
  {
    path: "/recipes",
    element: <Recipes />,
  },
  {
    path: "/register",
    element: <Recipes />,
  },
]);

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
