import { UserButton } from "@clerk/nextjs";
import { auth } from "@clerk/nextjs/server";
import { redirect } from "next/navigation";
import { dark } from '@clerk/themes'

const Home = async () => {
  const { userId } = await auth()
  if (!userId) {
    redirect("/login")
  }
  return (
    <div className="h-full flex items-center justify-center">
      <UserButton showName />
    </div>
  );;
}

export default Home;
