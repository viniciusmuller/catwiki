import React from 'react';
import { OtherPhotosContainer } from './styles';

interface OtherPhotosProps {
  urls: string[];
}

function OtherPhotos(props: OtherPhotosProps) {
  const { urls } = props;

  return (
    <>
      <h1>Other photos</h1>
      <OtherPhotosContainer>
        {urls.map((url) => (
          <img src={url} alt="Breed" />
        ))}
      </OtherPhotosContainer>
    </>
  );
}

export default OtherPhotos;
