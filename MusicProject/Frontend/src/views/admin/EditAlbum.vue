<template>
  <div class="user-add pt-20">
    <h2 style="font-weight: bold">Edit Album</h2>
    <br>
    <input style="width: 50%; border-radius: 7px" type="text" v-model="name" placeholder="Name"/>
    <br/><br/>
    <input style="width: 50%; border-radius: 7px" type="text" v-model="album_artist" placeholder="Album_artist"/>
    <br/><br/>
    <input style="width: 50%; border-radius: 7px" type="text" v-model="album_art" placeholder="Album_art"/>
    <br/><br/>
    <input style="width: 50%; border-radius: 7px" type="text" v-model="lyric" placeholder="Lyric"/> <br/><br/>
    <div>

    </div>

    <button
        class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="EditAlbum()"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "EditAlbum",
  data(){
    return{
      album: [],
      name: '',
      album_art: '',
      album_artist: '',
      lyric: '',
    }
  },

  mounted() {
    setTimeout(() => {
      this.record.email = 'example@email.com'
    }, 500)
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/album/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token_admin')
        }
      });
      console.log(res.data.data)
      this.album = res.data.data
      this.name = this.album.name
      this.album_art = this.album.album_art
      this.album_artist = this.album.album_artist
      this.lyric = this.album.lyric
    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    EditAlbum(){
      const credentials = {
        name: this.name,
        album_artist: this.album_artist,
        album_art: this.album_art,
        lyric: this.lyric
      };
      axios
          .put("http://localhost:8080/album/update/" + this.$route.params.id,credentials, {
            headers: {
              "Authorization" : localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/album'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>