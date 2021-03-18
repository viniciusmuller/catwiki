import React from 'react';
import { BreedInfoContainer, BreedImage } from './styles';

interface BreedInfoProps {
  imageUrl: string;
  description: string;
}

function BreedInfo(props: BreedInfoProps) {
  const { imageUrl } = props;

  return (
    <BreedInfoContainer>
      <BreedImage src={imageUrl} alt="Breed" />
      <div>
        <h1>Cat Name</h1>
        <p>xyzn</p>
      </div>
    </BreedInfoContainer>
  );
}

export default BreedInfo;
