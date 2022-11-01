<template>
  <div class="user-add pt-20">
    <h2>Add Playlist</h2>


    <br> <label>Singer:</label>

    <br><input style="width: 25%;  border-radius: 7px"  type="text" v-model="name" placeholder="name"/> <br />

    <br><label>Singer:</label>

    <br><input style="width: 25%;  border-radius: 7px"  type="text" v-model="status" placeholder="status"/> <br />

    <br><label>Singer:</label>

    <br> <input style="width: 25%;  border-radius: 7px"  type="text" v-model="type" placeholder="type"/> <br />

    <br> <label>user_id:</label>

    <br><input style="width: 25%;  border-radius: 7px"  type="text" v-model="user_id" placeholder="user_id"/> <br />

    <br> <label>image_url:</label>

    <br><input style="width: 25%;  border-radius: 7px"  type="text" v-model="image_url" placeholder="image_url"/> <br />

    <br><button
      class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="createPlaylist"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "CreatePlaylist",
  data(){
    return{
      name: '',
      status: '',
      type: '',
      user_id: '',
      image_url: '',
    }
  },

  methods: {
    createPlaylist(){
      const credentials = {
        name: this.name,
        status: this.status,
        type: this.type,
        user_id: this.user_id,
        image_url: this.image_url,
      };
      axios
          .post("http://localhost:8080/playlist/create" ,credentials, {
            headers: {
              "Authorization" : localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/playlist'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>