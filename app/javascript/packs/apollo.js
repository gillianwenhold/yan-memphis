// app/javascript/packs/front-end-react/apollo.js
import ApolloClient from 'apollo-boost';
import gql from 'graphql-tag';

export  const client = new ApolloClient({
  uri: '/graphql',
})

// get a single book query
export const POLL_QUERY = gql`
query {
  poll(id: 1) {
    title 
    options {
      name
    }
    responses {
      option { id }
    }
  }
}
`