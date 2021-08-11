import { gql } from '@apollo/client'

const mutation = gql`
  mutation registerUser(
    $firstName: String!,
    $lastName: String!,
    $email: String!,
    $password: String!,
  ) {
    registerUser(input: {
      firstName: $firstName,
      lastName: $lastName,
      email: $email,
      password: $password,
    }) {
      user {
        id
        firstName
        lastName
        email
        authenticationToken
      }
      success
      errors
    }
  }
`;

export async function registerUser({
  client,
  username,
  email,
  password
}) {
  return client.mutate({
    mutation,
    variables: {
      username,
      email,
      password
    },
  });
}
