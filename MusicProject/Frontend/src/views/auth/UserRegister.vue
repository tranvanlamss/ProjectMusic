<template>
  <div style="background: #282828" class="h-screen">
    <div class="container mx-auto px-4 h-full">
      <div class="flex content-center items-center justify-center h-full">
        <div class="w-full lg:w-4/12 px-4">
          <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-blueGray-200 border-0">
            <div class="flex-auto px-4 lg:px-10 py-10">
              <div class="text-blueGray-400 text-center mb-3 font-bold" style="font-size: 30px">
                <small>Register</small>
              </div>
              <form>
                <div class="relative w-full mb-3">
                  <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                         htmlFor="grid-password">Username</label>
                  <input type="text"
                         class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                         placeholder="Insert Username Here..." v-model="username"/>
                </div>

                <div class="relative w-full mb-3">
                  <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                         htmlFor="grid-password">Password</label>
                  <input type="password"
                         class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                         placeholder="Insert Password Here..." v-model="password"/>
                </div>
                <div>
                </div>

                <div class="text-center mt-6">
                  <button class="bg-blueGray-800 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 w-full ease-linear transition-all duration-150" type="button" v-on:click="registerUser">Register</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "UserRegister",

  data() {
    return {
      username: "",
      password: "",
      role_id: ""
    };
  },
  methods: {
    registerUser() {
      const credentials = {
        username: this.username,
        password: this.password,
      };
      axios.post("http://localhost:8080/user/register", credentials)
          .then((res) => {
            axios.post("http://localhost:8080/user/login", credentials)
                .then((response) => {
                  console.log(response.data.token);
                  localStorage.setItem('token', response.data.token)
                  this.$router.push({path: '/'})
                })
                .catch((err) => alert(err.response.message));
            console.log(res);
          })
          .catch((err) => alert(err.response));
    }
  }
}
</script>

<style scoped>

</style>