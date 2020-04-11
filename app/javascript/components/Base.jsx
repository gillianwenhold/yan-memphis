import React from 'react'
import gql from 'graphql-tag'
import { get } from 'lodash'
import { useQuery } from '@apollo/react-hooks'
import { Link } from 'react-router-dom'

const POLL_QUERY = gql`
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

const Home = () => {
  const { loading, error, data } = useQuery(POLL_QUERY)
  const poll = get(data, 'poll', [])

  return (
    <div className='vw-100 vh-100 d-flex align-items-center justify-content-center'>
      <div className='jumbotron jumbotron-fluid bg-transparent'>
        <h1>COVID Resources Poll</h1>
        <p className='lead'>{poll.title}</p>
        <hr className='my-4' />
        <p></p>
        <Link
          to='/home'
          className='btn btn-lg custom-button'
          role='button'
        >
          Submit
        </Link>
      </div>
    </div>
  )
}

export default Home