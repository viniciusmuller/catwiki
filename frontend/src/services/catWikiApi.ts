import applyCaseMiddleware from 'axios-case-converter';
import axios from 'axios';

export const catWikiAPI = applyCaseMiddleware(
  axios.create({
    baseURL: 'http://localhost:4000/api',
  })
);
