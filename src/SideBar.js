import './index.css';
import { NavLink } from "react-router-dom";
import routes from "./routes";
import { FaHome } from "react-icons/fa"; 

const SideBar = () => {
  return (
    <div className="fixed top-0 left-0 h-screen w-16 m-0
                    flex flex-col
                    bg-primary text-secondary shadow-lg">
      <SideBarIcon icon={<FaHome size="28" />} text="Home" path="/" />

      <div className="sidebar-divider" />

      {routes.filter(({ icon }) => (icon != null)).map(({ path, icon, name }, key) => (
        <SideBarIcon path={path} text={name} icon={icon} key={key}/>
      ))}
    </div>
  );
}

const SideBarIcon = ({ icon, text = "", path = "" }) => (
  <NavLink to={path}
    className="sidebar-icon group">
    {icon}
    <span className="sidebar-tooltip group-hover:scale-100">
      {text}
    </span>
  </NavLink>
)

export default SideBar;
