import "../index.css"
import BreadCrumbs from '../BreadCrumbs'
import { FaSadTear } from 'react-icons/fa';
import { Link } from "react-router-dom";

const ErrorPage = () => (
  <>
    <BreadCrumbs />
    <div className="main-error">
      <span className="error">
        <h1>
          404 Error
        </h1>
        <h1>
          <FaSadTear />
        </h1>
        <Link to="/">
          Return Home
        </Link>
      </span>
    </div>
  </>
)

export default ErrorPage
