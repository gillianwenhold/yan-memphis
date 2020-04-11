import React from 'react'
import { ApolloProvider } from 'react-apollo'
import { Router, Route, Switch } from 'react-router-dom'
import { createBrowserHistory } from 'history'

import { client } from '../packs/apollo'
import Home from './Home'
import CovidResources from './CovidResources'
import Footer from './partials/Footer'
import Header from './partials/Header'
import Base from './Base'

const App = () => {
  const history = createBrowserHistory();

  return (
    <ApolloProvider client={client}>
      <Router history={history}>
        <div className={'contentContainer'}>
          <Header />
          <div className={'mainContent'}>
            <Switch>
            <Route path='/covid_resources' exact component={CovidResources} />
            <Route path='/home' exact component={Home} />
            <Route path='/' exact component={Base} />
            </Switch>
          </div>
        </div>
      </Router>
      <Footer />
    </ApolloProvider>
  )
}

export default App