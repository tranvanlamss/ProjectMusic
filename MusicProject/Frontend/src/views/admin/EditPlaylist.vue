<template>
  <div class="user-add pt-20">
    <h2 style="font-weight: bold">Edit Playlist</h2>
    <br>
    <input type="text" v-model="name" placeholder="name"/> <br />
    <input type="text" v-model="type" placeholder="type"/> <br />
    <input type="text" v-model="image_url" placeholder="image url"/> <br />
    <input type="text" v-model="user_id" placeholder="User Id"/> <br />
    <input type="text" v-model="status" placeholder="status"/> <br />
    <div>

    </div>

    <button
        class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="EditPlaylist()"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "EditPlaylist",
  data(){
    return{
      playlist: [],
      name: '',
      type: '',
      status: '',
      user_id: '',
      image_url: '',
    }
  },

  mounted() {
    setTimeout(() => {
      this.record.email = 'example@email.com'
    }, 500)
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/playlist/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.playlist = res.data.data
      this.name = this.playlist.name
      this.type = this.playlist.type
      this.status = this.playlist.status
      this.user_id = this.playlist.user_id
      this.image_url = this.playlist.image_url
    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    EditPlaylist(){
      const credentials = {
        name: this.name,
        type: this.type,
        status: this.status,
        image_url: this.image_url,
        user_id: this.user_id,

      };
      axios
          .put("http://localhost:8080/playlist/update/" + this.$route.params.id,credentials, {
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