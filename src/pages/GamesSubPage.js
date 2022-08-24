import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';

const GameSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <PageComponent filter="game"/>
    </div>
  </>
)

export default GameSubPage;
