import styled from 'styled-components';

import HomeImageLg from '~/assets/img/HeroImagelg.png';

export const CatBreedSuggestions = styled.div`
  background-color: #e3e1dc;
  width: 100%;
  height: 15rem;

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
