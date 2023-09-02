import './index.css';
import { Link, useLocation, useParams, matchPath } from "react-router-dom";
import routes from "./routes";

function GetCrumbs() {
  const location = useLocation();
  const params = useParams();

  var crumbs = routes
    .filter(({ path }) => matchPath({path: path, end: false}, location.pathname))
    .map(({ path, name, ...rest }) => ({
    path: Object.keys(params).length
      ? Object.keys(params).reduce(
        (path, param) => path.replace(
          `:${param}`, params[param]
        ), path
      )
      : path,
    name: Object.keys(params).length
      ? Object.keys(params).reduce(
        (name, param) => name.replace(
          `:${param}`, params[param]
        ), name
      )
      : name,
    ...rest
  }));

  document.title = location.pathname === "/" ? "Prestosilver" : ("Prestosilver" + location.pathname).replaceAll("/", " | ");

  console.log(`Generated crumbs for ${location.pathname}`);
  crumbs.map(({ name, path }) => console.log({ name, path }));

  return crumbs;
}


const BreadCrumbs = () => {
  const crumbs = GetCrumbs();

  if (crumbs.length <= 1) {
    return (
      <div className="fixed top-0 left-16 h-8 w-screen m-0
                      flex flex-row content-center
                      bg-act1 text-act2 shadow-lg">
        <div className="breadcrumb-divider" />
        <Link className="crumb" to="/">
          Prestosilver
        </Link>
      </div>
    )
  }

  return  (
    <div className="fixed top-0 left-16 h-8 w-screen m-0
                    flex flex-row content-center
                    bg-act1 text-act2 shadow-lg">
      <span className="breadcrumb-divider" />
      {crumbs.map(({ name, path }, key) =>
        key + 1 === crumbs.length ? (
          <Link className="crumb" key={key} to={path}>
            {name}
          </Link>
        ) : (
          <>
            <Link className="crumb" key={key} to={path}>
              {name}
            </Link>
            <span className="breadcrumb-divider" />
          </>
        )
      )}
    </div>
  )
}

export default BreadCrumbs;
