<template>
  <form>
    <div class="user-add pt-20">
      <div>
        <h2 style="font-weight: bold">Add Author</h2><br/>
        <div>


          <label>Name:</label>
          <br><input style="width: 50%; border-radius: 7px" type="text" v-model="name" placeholder="Name"/>
          <br/><br/>

          <label>Album_artist:</label>
          <br> <input style="width: 50%; border-radius: 7px" type="text" v-model="image_url" placeholder="Album_artist"/>
          <br/><br/>
        </div>

        <button
            class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
            type="button"
            v-on:click="createAuthor"

        >
          Submit
        </button>
      </div>
    </div>
  </form>
</template>

<script>
import axios from "axios";

export default {
  name: "CreateAuthor",
  data() {
    return {
      name: '',
      image_url: '',

    }
  },

  methods: {
    createAuthor() {
      const credentials = {
        name: this.name,
        image_url: this.image_url,
      };
      axios
          .post("http://localhost:8080/author/create", credentials, {
            headers: {
              "Authorization": localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/author'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>