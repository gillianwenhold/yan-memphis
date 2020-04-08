import React from 'react';
import { render } from 'react-dom';
import { ApolloProvider } from 'react-apollo';
import { ApolloClient } from 'apollo-client';
import { createHttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min';
import App from '../components/App';

const link = createHttpLink({
  uri: 'http://localhost:3000//graphql'
})

const client = new ApolloClient({
  link: link,
  cache: new InMemoryCache()
})

document.addEventListener("DOMContentLoaded", () => {
  render(
    <ApolloProvider client={client}>
      <App />
    </ApolloProvider>,
    document.body.appendChild(document.createElement("div"))
  );
});