<template>
  <div class="container mx-auto px-4 h-full">
    <div class="flex content-center items-center justify-center h-full">
      <div class="w-full lg:w-4/12 px-4">
        <div
            class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-blueGray-200 border-0"
        >
          <div class="rounded-t mb-0 px-6 py-6">
            <div class="text-center mb-3">
              <h6 class="text-blueGray-500 text-sm font-bold">
                Login Admin
              </h6>
            </div>
            <div class="btn-wrapper text-center">


            </div>
            <hr class="mt-6 border-b-1 border-blueGray-300" />
          </div>
          <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
            <form  @submit.prevent="handleSubmit">
              <div class="relative w-full mb-3">
                <label
                    class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                    htmlFor="grid-password"
                >
                  Username
                </label>
                <input
                    type="text"
                    class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                    placeholder="usernam"
                    v-model="username"
                />
              </div>

              <div class="relative w-full mb-3">
                <label
                    class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                    htmlFor="grid-password"
                >
                  Password
                </label>
                <input
                    type="password"
                    class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                    placeholder="Password"
                    v-model="password"
                />
              </div>

              <div class="text-center mt-6">
                <button
                    class="bg-blueGray-800 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 w-full ease-linear transition-all duration-150"
                    type="button"
                    v-on:click="loginUser"
                >
                  Sign In
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="flex flex-wrap mt-6 relative">
          <div class="w-1/2">
          </div>
          <div class="w-1/2 text-right">
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import facebook from "@/assets/img/facebook-icons.jpeg";
import google from "@/assets/img/google.svg";
import axios from "axios"

export default {
  name: 'Login',
  data() {
    return {
      facebook,
      google,
      username: "",
      password: "",
    };
  },
  methods: {
    async handleSubmit(){
      const response = await axios.post('login', {
        username: this.username,
        password: this.password
      });
      localStorage.setItem('token', response.data.token);
    },
    loginUser(){
      const credentials = {
        username: this.username,
        password: this.password,
      };
      axios
          .post("http://localhost:8080/user/login", credentials)
          .then((response) => {
            console.log(response.data.token);
            localStorage.setItem('token_admin', response.data.token)
            this.$router.push({path: '/admin'})
          })
          .catch((err) => console.log(err.response));
    }
  }
};
</script>
