import React from 'react';

import { CatImage } from './styles';

interface CatCardProps {
  name: string;
  url: string;
  views: number;
}

function CatCard(props: CatCardProps) {
  const { views, name, url } = props;

  return (
    <div>
      <CatImage src={url} />
      <h3>{name}</h3>
      <p>{views} views</p>
    </div>
  );
}

export default CatCard;
