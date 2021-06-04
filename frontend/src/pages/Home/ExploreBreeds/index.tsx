import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';
import { catWikiAPI } from '~/services/catWikiApi';
import { Breed } from '~/types/breed';
import CatCard from './CatCard';
import {
  BreedsInput,
  BreedsToDiscoverText,
  CatBreedSuggestions,
  ContentText,
  ContentWrapper,
  ImagesWrapper,
  SeeMoreLink,
} from './styles';

function ExploreBreeds() {
  const [cats, setCats] = useState<Breed[]>([]);

  useEffect(() => {
    catWikiAPI.get('/breeds').then((response) => setCats(response.data));
  }, []);

  cats.sort((a, b) => (a.views < b.views ? 1 : -1));

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
            {cats.map((cat: Breed) => <CatCard {...cat} />).slice(0, 4)}
          </ImagesWrapper>
        </div>
      </CatBreedSuggestions>
    </>
  );
}

export default ExploreBreeds;
