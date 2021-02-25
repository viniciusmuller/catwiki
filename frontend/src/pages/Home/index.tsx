import React from 'react';
import { HomeWrapper } from './styles';

import ExploreBreeds from './ExploreBreeds';

function Home() {
  return (
    <HomeWrapper>
      <ExploreBreeds />
      {/* <AboutCats /> */}
    </HomeWrapper>
  );
}

export default Home;
