import React from 'react';

import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';

import {
  ContentWrapper,
  ContentText,
  BreedsInput,
  CatBreedSuggestions,
  ImagesWrapper,
  BreedsToDiscoverText,
  SeeMoreLink,
} from './styles';

import CatCard from './CatCard';

function ExploreBreeds() {
  return (
    <>
      <ContentWrapper>
        <AppLogo fill="#fff" />
        <ContentText>Get to know more about your cat breed</ContentText>
        <BreedsInput placeholder="Enter your breed" />
      </ContentWrapper>
      <CatBreedSuggestions>
        <div style={{ color: '#291507' }}>
          <BreedsToDiscoverText>
            66+ Breeds For you to discover
          </BreedsToDiscoverText>
          <SeeMoreLink>See more ⟶</SeeMoreLink>
          <ImagesWrapper>
            <CatCard name="antonio" url="https://github.com/arcticlimer.png" />
            <CatCard name="antonio" url="https://github.com/arcticlimer.png" />
            <CatCard name="antonio" url="https://github.com/arcticlimer.png" />
          </ImagesWrapper>
        </div>
      </CatBreedSuggestions>
    </>
  );
}

export default ExploreBreeds;
