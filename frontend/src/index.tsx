import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

import GlobalStyles from './globals';
import Template from '~/components/Template';
import Home from '~/pages/Home';
import Cat from '~/pages/Cat';

ReactDOM.render(
  <React.StrictMode>
    <GlobalStyles />
    <Router>
      <Switch>
        <Route path="/" exact>
          <Home />
        </Route>
        <Route path="/breeds/:id">
          <Cat />
        </Route>
      </Switch>
    </Router>
  </React.StrictMode>,
  document.getElementById('root')
);
