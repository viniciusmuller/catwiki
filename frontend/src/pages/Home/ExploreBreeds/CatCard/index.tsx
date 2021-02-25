import React from 'react';

import { CatImage } from './styles';

interface CatCardProps {
  name: string;
  url: string;
}

function CatCard(props: CatCardProps) {
  const { name, url } = props;

  return (
    <div>
      <CatImage src={url} />
      <h3>{name}</h3>
    </div>
  );
}

export default CatCard;
