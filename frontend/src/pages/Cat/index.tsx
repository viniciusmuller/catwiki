import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';

import { Breed } from '~/types/breed';
import { catWikiAPI } from '~/services/catWikiApi';
import Template from '~/components/Template';
import OtherPhotos from './OtherPhotos';
import BreedInfo from './BreedInfo';

interface Params {
  id: string;
}

function Cat() {
  const [breedDetails, setBreedDetails] = useState<Breed>();
  const { id } = useParams<Params>();

  useEffect(() => {
    catWikiAPI.get(`/breeds/${id}`).then((response) => {
      setBreedDetails(response.data);
      console.log(response.data);
    });
  }, []);

  // <BreedInfo />
  return (
    <Template>
      <h1>{breedDetails?.name}</h1>
      <OtherPhotos urls={['abc', 'dce']} />
    </Template>
  );
}

export default Cat;
