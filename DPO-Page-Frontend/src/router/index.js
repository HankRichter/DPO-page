import {createRouter, createWebHistory} from "vue-router";
import Home from "../components/Home.vue";
import Form from "../components/Form.vue";

const router = createRouter({ 
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
  {
    path: "/",
    component: Home,
  },
  {
    path: "/form",
    component: Form,
  },
]
})

export default router;

