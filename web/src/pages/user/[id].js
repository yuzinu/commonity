import { getUsers, getUser } from '../../queries/users'
import UserComponent from '../../components/User.tsx'

export default function User(props) {
  
  return (
    <UserComponent props={props}/>
  )
}

// This function gets called at build time
export async function getStaticPaths() {
  // Call an external API endpoint to get posts
  const users = await getUsers()

  // Get the paths we want to pre-render based on posts
  const paths =  users.data.users.map((user) => {
    return (
      {
        params: {
          id: `${user.id}`
        }
      }
    )
  })

  // We'll pre-render only these paths at build time.
  // { fallback: false } means other routes should 404.
  return { paths, fallback: false }
}

export async function getStaticProps({params}){
  const user = await getUser(params.id)

  return{
      props: {
          user
      }
  }
}