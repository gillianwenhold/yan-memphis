import React from 'react'
import { Router, Route, Switch } from 'react-router-dom'
import { createBrowserHistory } from 'history'

import Home from './Home'
import CovidResources from './CovidResources'
import Footer from './partials/Footer'
import Header from './partials/Header'
import Base from './Base'
const App = () => {
  const history = createBrowserHistory();

  return (
    <>
      <Router history={history}>
        <Header />
        <Switch>
        <Route path='/covid_resources' exact component={CovidResources} />
        <Route path='/home' exact component={Home} />
        <Route path='/' exact component={Base} />
        </Switch>
      </Router>
      <Footer />
    </>
  )
}

export default App