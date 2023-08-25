import "./index.css";
import { Link } from "react-router-dom";

const Frame = ({image, kind = "projects", title = "Lol", link = "", desc = "Lol"}) => {
  return image === null ? (
    <div className="frame-bg">
      <Link to={"/" + kind + "s/" + link}>
        <div className="frame-container">
          <div className="frame-body">
            <h1>
              {title}
            </h1>
            <p>
              {desc}
            </p>
          </div>
        </div>
      </Link>
    </div>
  ) : (
    <div className="frame-bg">
      <Link to={"/" + kind + "s/" + link}>
        <div className="frame-container">
          <div className="frame-image">
            <img src={image} alt={kind} />
          </div>
          <div className="frame-desc">
            <h1>
              {title}
            </h1>
            <p>
              {desc}
            </p>
          </div>
        </div>
      </Link>
    </div>
  )
}

export default Frame;
