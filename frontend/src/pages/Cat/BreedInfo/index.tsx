import React from 'react';
import { BreedInfoContainer, BreedImage } from './styles';

import { Breed } from '~/types/breed';

function BreedInfo(props: Breed) {
  const { name, description, temperament, lifeSpan } = props;

  return (
    <BreedInfoContainer>
      {/* <BreedImage src={imageUrl} alt="Breed" /> */}
      <div>
        <h1>{name}</h1>
        <h2>{description}</h2>
        <p>Temperament: {temperament}</p>
        <p>Life span: {lifeSpan}</p>
      </div>
    </BreedInfoContainer>
  );
}

export default BreedInfo;
