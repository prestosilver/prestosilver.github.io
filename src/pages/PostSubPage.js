import "../index.css";
import posts from '../projects';
import { useParams } from "react-router-dom";
import ReactMarkdown from 'react-markdown';
import React, { useEffect, useState } from "react";
import BreadCrumbs from '../BreadCrumbs'

function GetPost() {
  const params = useParams();

  var param = params["post"];
  var name = posts.filter(({ short }) => short === param)[0].name;
  return name;
}

const PageComponent = () => {
  let [ content, setContent] = useState({md: ""});

  var post = GetPost();

  var file = posts.filter(({ name }) => name === post)[0].file;
  
  useEffect(()=> {
    fetch(file)
      .then((res) => res.text())
      .then((md) => {
          setContent({ md })
      })
  }, [])

  return (
    <div className="post">
      <ReactMarkdown children={content.md} transformImageUri={(src, alt, title) => process.env.PUBLIC_URL + src}/>
    </div>
  )
}

const PostSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        {GetPost()}
      </h1>
      <PageComponent />
    </div>
  </>
)

export default PostSubPage;
