import HomePage from "./pages/HomePage";
import ProjectPage from "./pages/ProjectPage";
import ProjectSubPage from "./pages/ProjectSubPage";
import GamePage from "./pages/GamesPage";
import GameSubPage from "./pages/GamesSubPage";
import PostPage from "./pages/PostPage";
import PostSubPage from "./pages/PostSubPage";

import { FaSuitcase, FaGamepad, FaLightbulb } from 'react-icons/fa';

var routes = [
  { path: "/", icon: null, name: "Prestosilver", Component: HomePage },
  { path: "/projects", icon: <FaSuitcase size="28"/>, name: "Projects", Component: ProjectPage },
  { path: "/projects/:project", icon: null, name: ":project", Component: ProjectSubPage },
  { path: "/games", icon: <FaGamepad size="28"/>, name: "Games", Component: GamePage },
  { path: "/games/:game", icon: null, name: ":game", Component: GameSubPage },
  { path: "/posts", icon: <FaLightbulb size="28"/>, name: "Posts", Component: PostPage },
  { path: "/posts/:post", icon: null, name: ":post", Component: PostSubPage },
];

export default routes;
