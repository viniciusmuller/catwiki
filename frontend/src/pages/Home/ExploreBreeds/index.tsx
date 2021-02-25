import React from 'react';

import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';

import {
  ContentWrapper,
  ContentText,
  BreedsInput,
  CatBreedSuggestions,
} from './styles';

function ExploreBreeds() {
  return (
    <>
      <ContentWrapper>
        <AppLogo fill="#fff" />
        <ContentText>Get to know more about your cat breed</ContentText>
        <BreedsInput placeholder="Enter your breed" />
      </ContentWrapper>
      <CatBreedSuggestions>
        <h1>66+ Breeds For You to discover</h1>
        <h3>See more ⟶</h3>
      </CatBreedSuggestions>
    </>
  );
}

export default ExploreBreeds;
