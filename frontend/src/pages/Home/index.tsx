import React from 'react';
import { HomeWrapper } from './styles';

import Template from '~/components/Template';
import ExploreBreeds from './ExploreBreeds';

function Home() {
  return (
    <Template>
      <HomeWrapper>
        <ExploreBreeds />
        {/* <AboutCats /> */}
      </HomeWrapper>
    </Template>
  );
}

export default Home;
