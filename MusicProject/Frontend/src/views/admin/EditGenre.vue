<template>
  <div class="user-add pt-20">
    <h2 style="font-weight: bold">Edit Genre</h2>
    <br>
    <input type="text" v-model="name" placeholder="name"/> <br />
    <div>

    </div>

    <button
        class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="EditGenre()"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "EditGenre",
  data(){
    return{
      genre: [],
      name: '',
    }
  },

  mounted() {
    setTimeout(() => {
      this.record.email = 'example@email.com'
    }, 500)
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/genre/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.genre = res.data.data
      this.name = this.genre.name
    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    EditGenre(){
      const credentials = {
        name: this.name,
      };
      axios
          .put("http://localhost:8080/genre/update/" + this.$route.params.id,credentials, {
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