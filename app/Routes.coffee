import React from 'react'
import { Route, Switch } from 'react-router-dom'
import AppliedRoute from './react/components/AppliedRoute'
import PortfolioHome                      from './react/portfolio/index'
import Home                      from './react/home/index'
import BlogHome                      from './react/blog/index'
import ActivityHome                      from './react/activity/index'
import NotFound                      from './react/components/notFound'

export default   ({childProps} ) =>
  console.log "==props"
  <Switch>
    <AppliedRoute path="/" exact component={Home}   />
    <AppliedRoute path="/activity" exact component={ActivityHome}   />
    <AppliedRoute path="/portfolio" exact component={PortfolioHome}   />
    <Route exact path="/blog" exact component={BlogHome}   />
    <Route component={NotFound} />
  </Switch>
