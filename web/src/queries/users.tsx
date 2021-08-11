import { gql } from '@apollo/client'
import { initializeApollo } from '../../apollo/apolloClient';

export async function getUsers() {
  const data = await initializeApollo().query({
    query: gql`
      query GetUsers {
        users {
          id
          username
          email
        }
      }
    `
  })

  return {...data}
}
export async function getUser(id) {
  const data = await initializeApollo().query({
    query: gql`
     query GetUser($id: ID!) {
        user(id: $id) {
          id
          username
          email
        }
      }
    `,
    variables: { id }
  })

  return {...data}
}
