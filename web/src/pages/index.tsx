import { Users } from '../components/Users'
import { User } from '../components/User'
import { DarkModeSwitch } from '../components/DarkModeSwitch'
import { getUsers, getUser } from '../queries/users'

const Index = (props) => {
  return(
    <>
      <h1>Welcome Home!</h1>
      <DarkModeSwitch />
      {/* <Users props={props}/> */}
    </>
  )
}

export default Index



// export async function getStaticProps(){
//   const  users = await getUsers()
//   return{
//     props: {users}
//   }
// }

// export const getStaticProps = async () => {
//   const client = initializeApollo();
  
//   const data = await client.query({
//     query: GET_USERS,
//   });

//   return {
//     props: {
//       users: data.users
//     }
//   }
// }