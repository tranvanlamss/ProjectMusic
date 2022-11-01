<template>
  <div class="user-add pt-20">
    <h2>Add Genre</h2>

    <br>  <label>name:</label>
    <br>  <input style="width: 25%;  border-radius: 7px"  type="text" v-model="name" /> <br />

    <br> <button
      class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="createGenre"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "CreateGenre",
  data(){
    return{
      name: '',
    }
  },

  methods: {
    createGenre(){
      const credentials = {
        name: this.name,
      };
      axios
          .post("http://localhost:8080/genre/create" ,credentials, {
            headers: {
              "Authorization" : localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/genre'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>