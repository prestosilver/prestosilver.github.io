import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';

const ProjectSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <div className="main-center">
        <PageComponent filter="project"/>
      </div>
    </div>
  </>
)


export default ProjectSubPage;
