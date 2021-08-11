
import { List, ListItem, Text } from "@chakra-ui/react"
import Link from 'next/link'

const User = (props) => {
  let user = props.props.user.data.user

  return (
    <>
      <List key={user.id}>
        <ListItem>User: {user.id}</ListItem>
        <ListItem>username: {user.username}</ListItem>
        <ListItem>email: {user.email}</ListItem>
      </List>
      <Link href='/'>&larr; back to home</Link>
    </>
  )
}

export default User