import { Router } from "express"
import { router as TestRouter } from "./test-router"

const routes = Router()
routes.use("/test", TestRouter)

export default routes
