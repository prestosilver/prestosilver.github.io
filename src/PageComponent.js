import "./index.css";
import ReactMarkdown from 'react-markdown';
import { useParams } from "react-router-dom";
import posts from "./projects";
import React, { useEffect, useState } from "react";

function GetFilter(filter) {
  const params = useParams();

  var param = params[filter];
  var name = posts.filter(({ short }) => short === param)[0].name;
  return name;
}

const PageComponent = ({filter}) => {
  let [ content, setContent] = useState({md: ""});

  var post = GetFilter(filter);

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
      <h1>
        {GetFilter(filter)}
      </h1>
      <ReactMarkdown children={content.md} transformImageUri={(src, alt, title) => process.env.PUBLIC_URL + src}/>
    </div>
  )
}

export default PageComponent;
