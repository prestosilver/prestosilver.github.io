import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';

const PostSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <div className="main-center">
        <PageComponent filter="post"/>
      </div>
    </div>
  </>
)

export default PostSubPage;
