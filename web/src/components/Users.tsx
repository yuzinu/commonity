import { useQuery } from "@apollo/client"
import { initializeApollo } from "../../apollo/apolloClient";
import { List, ListItem, Text } from "@chakra-ui/react"
import { GET_USERS } from "../queries/users";

export const Users = () => {
  const { loading, error, data } = useQuery(GET_USERS);

  if (loading) return <Text>'Loading...'</Text>;
  if (error) return <Text>`Error! ${error.message}`</Text>;

  return (
    <>
      <Text>All Users</Text>
      {data.users.map(user => (
        <List key={user.id}>
          <ListItem>User: {user.id}</ListItem>
          <ListItem>username: {user.username}</ListItem>
          <ListItem>email: {user.email}</ListItem>
        </List>
      ))}
    </>
  )
}

export const getStaticProps = async () => {
  const client = initializeApollo();
  
  const data = await client.query({
    query: GET_USERS,
  });

  return {
    props: {
      users: data.users
    }
  }
}