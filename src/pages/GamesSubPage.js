import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';

const GameSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <div className="main-center">
        <PageComponent filter="game"/>
      </div>
    </div>
  </>
)

export default GameSubPage;
