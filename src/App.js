import SideBar from "./SideBar";
import routes from "./routes";
import { BrowserRouter as Router, Route, Routes} from "react-router-dom";
import './index.css';

const App = () => (
  <Router>
    <Routes>
      {routes.map(({ path, Component }, key) => (
        <Route path={path} key={key} element={<Component />} />
      ))}
    </Routes>
    <SideBar />
  </Router>
)

export default App;
