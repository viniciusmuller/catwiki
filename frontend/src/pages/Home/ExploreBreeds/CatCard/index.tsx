import React from 'react';
import { Link } from 'react-router-dom';
import { Breed } from '~/types/breed';

import { CatImage, CatName } from './styles';

function CatCard(props: Breed) {
  const { name, imageUrl, catApiId } = props;

  return (
    <div>
      <Link
        style={{ textDecoration: 'none' }}
        key={name}
        to={`/breeds/${catApiId}`}
      >
        <CatImage src={imageUrl} />
        <CatName>{name}</CatName>
      </Link>
    </div>
  );
}

export default CatCard;
