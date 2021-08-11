import { useQuery } from "@apollo/client"
import { initializeApollo } from "../../apollo/apolloClient";
import { List, ListItem, Text } from "@chakra-ui/react"
import { GET_USERS } from "../queries/users";
import Link from 'next/link'
import styles from './Users.module.css'

export const Users = (props) => {
  return (
    <>
      <Text>All Users</Text>
      {props?.props.users.data.users.map(user => (
        <div key={user.id} className={styles.link}>
          <Link href={`/user/${user.id}`}><a >{user.username}</a></Link >
        </div>
      ))}
    </>
  )
}