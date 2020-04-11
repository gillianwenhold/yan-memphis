import React from 'react';
import ReactDOM, { render } from 'react-dom';
import { ApolloProvider } from 'react-apollo';
import { ApolloClient } from 'apollo-client';
import { createHttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min';
import App from '../components/App';

import * as serviceWorker from './serviceWorker';

const link = createHttpLink({
  uri: 'http://www.youthaction901.com/graphql'
})

const client = new ApolloClient({
  link: link,
  cache: new InMemoryCache()
})

ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
    document.body.appendChild(document.createElement("div"))
  );
});
