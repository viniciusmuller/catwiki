import styled from 'styled-components';

import HomeImageLg from '~/assets/img/HeroImagelg.png';

export const CatBreedSuggestions = styled.div`
  background-color: #e3e1dc;
  padding: 2rem;

  border-radius: 0 0 2rem 2rem;
`;

export const ContentWrapper = styled.div`
  background: url(${HomeImageLg});

  border-radius: 2rem 2rem 0 0;

  background-size: contain;
  background-repeat: no-repeat;
  background-position: right;
  background-color: #050709;

  display: flex;
  flex-direction: column;

  padding-top: 4rem;
  padding-left: 4rem;
`;

export const ContentText = styled.div`
  color: #fff;
  font-size: 1.3rem;

  margin-top: 1rem;
`;

export const BreedsInput = styled.input`
  margin: auto;
  margin-top: 3rem;
  padding: 1rem 2rem;

  border-radius: 2rem;
  border: none;

  font-size: 1.2rem;
`;

export const BreedsToDiscoverText = styled.h1`
  color: #291507;
  font-size: 2.5rem;
  margin: 0;
`;

export const SeeMoreLink = styled.a`
  color: rgba(41, 21, 7, 0.6);
  text-transform: uppercase;
  font-weight: bold;
`;

export const ImagesWrapper = styled.div`
  margin-top: 2rem;

  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
`;
