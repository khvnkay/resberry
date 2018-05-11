import React from 'react';
import { Route } from 'react-router-dom';

export default ({ component: C }) =>
  <Route 
    render={ 
      (props)->
        <C {...props}  />
      } 
  />

