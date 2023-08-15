<template>
  <div>
    <h1>Form Component</h1>
    <form @submit.prevent="submitForm">
      <input type="text" v-model="formData.name" placeholder="Name" /><br />
      <input type="email" v-model="formData.email" placeholder="Email" /><br />
      <button type="submit">Submit</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Form",
  data() {
    return {
      formData: {
        name: "",
        email: "",
      },
    };
  },
  methods: {
    submitForm() {
      axios.post("http://localhost:3000/submit", this.formData)
        .then((response) => {
          console.log(response.data);
        })
        .catch((error) => {
          console.error(error);
        });
    },
  },
};
</script>
