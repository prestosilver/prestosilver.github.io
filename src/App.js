import SideBar from "./SideBar";
import routes from "./routes";
import { BrowserRouter as Router, useSearchParams, Route, Routes} from "react-router-dom";
import { useEffect, useState } from 'react';
import { applyTheme } from './Theme';
import './index.css';
import ErrorPage from "./pages/Error";

const App = () => {
    const [theme, setTheme ] = useState('random');

    useEffect(() => {
      applyTheme(theme);
    }, [theme]);

    return (
      <Router>
        <Routes>
          {routes.map(({ path, Component }, key) => (
            <Route path={path} key={key} element={<Component />} />
          ))}
          <Route path="*" element={<ErrorPage />} />
        </Routes>
        <SideBar />
      </Router>
    );
}

export default App;
