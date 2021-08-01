import { useQuery } from "@apollo/client"
import { initializeApollo } from "../../apollo/apolloClient";
import { List, ListItem, Text } from "@chakra-ui/react"
import { GET_USER } from "../queries/users";

export const User = () => {
  const { loading, error, data } = useQuery(GET_USER, { variables: { id: "11"} });
  
  if (loading) return <Text>'Loading...'</Text>;
  if (error) return <Text>`Error! ${error.message}`</Text>;

  const { user } = data;

  return (
    <>
      <List key={user.id}>
        <ListItem>User: {user.id}</ListItem>
        <ListItem>username: {user.username}</ListItem>
        <ListItem>email: {user.email}</ListItem>
      </List>
    </>
  )
}

export const getStaticProps = async () => {
  const client = initializeApollo();
  
  const data = await client.query({
    query: GET_USER,
  });

  return {
    props: {
      user: data.user
    }
  }
}