<template>
  <div class="user-add pt-20">
    <h2>Add Playlist</h2>
    <input type="text" v-model="name" placeholder="name"/> <br />
    <input type="text" v-model="status" placeholder="status"/> <br />
    <input type="text" v-model="type" placeholder="type"/> <br />
    <input type="text" v-model="user_id" placeholder="user_id"/> <br />

    <button
        class="bg-blueGray-800 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
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
  name: "CreatePlaylistSong",
  data(){
    return{
      playlist_id: '',
      song_id: '',
    }
  },

  methods: {
    createPlaylist(){
      const credentials = {
        playlist_id: this.playlist_id,
        song_id: this.song_id,
      };
      axios
          .post("http://localhost:8080/pivot/create" ,credentials, {
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