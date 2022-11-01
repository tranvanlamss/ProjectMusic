<template>
  <div class="user-add pt-20">
    <h2 style="font-weight: bold">Add Singer</h2>
    <br>
    <input type="text" v-model="name" placeholder="name"/>
    <br /><br>
    <input type="text" v-model="thumbnail" placeholder="thumbnail"/>
    <br /><br>
    <input type="text" v-model="video_url" placeholder="video url"/> <br />
    <div>

    </div>

    <button
        class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="EditMvMusic()"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "EditMvMusic",
  data(){
    return{
      mvmusic: [],
      name: '',
      thumbnail: '',
      video_url: '',
    }
  },

  mounted() {
    setTimeout(() => {
      this.record.email = 'example@email.com'
    }, 500)
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/mv/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.mvmusic = res.data.data
      this.name = this.mvmusic.name
      this.thumbnail = this.mvmusic.thumbnail
      this.video_url = this.mvmusic.video_url
    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    EditMvMusic(){
      const credentials = {
        name: this.name,
        thumbnail: this.thumbnail,
        video_url: this.video_url,
      };
      axios
          .put("http://localhost:8080/mv/update/" + this.$route.params.id,credentials, {
            headers: {
              "Authorization" : localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/mvmusic'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>