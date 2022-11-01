<template>
  <div class="user-add pt-20">
    <h2 style="font-weight: bold">Add Singer</h2>
    <br>
    <div>
      <label>Name:</label>
      <br>
      <input style="width: 50%; border-radius: 7px" type="text" v-model="name" placeholder="Name"/>
      <br/><br/>
      <label>Album:</label>
      <br>
      <select id="countries" v-model="album_id" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block  p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option v-for="item in albums" :key="item.id" :value="`${ item.id }`" >{{item.name}}</option>
      </select>
      <br/><br/>
      <label>Lyrics:</label>
      <br>
      <input style="width: 50%; border-radius: 7px" type="text" v-model="lyrics" placeholder="Lyrics"/>
      <br/><br/>
      <label>Url:</label>
      <br>
      <input style="width: 50%; border-radius: 7px" type="text" v-model="url" placeholder="Url"/>
      <br/><br/>
      <label>Genre:</label>
      <br>
      <select id="countries" v-model="genre_id" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block  p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option v-for="item in genres" :key="item.id" :value="`${ item.id }`" >{{item.name}}</option>
      </select>
      <br/><br/>
      <label>Singer:</label>
      <br>
      <select id="countries" v-model="singer_id" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-6 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option v-for="item in singers" :key="item.id" :value="`${ item.id }`" >{{item.name}}</option>
      </select>
      <br/><br/>
      <label>Author:</label>
      <br>
      <select id="countries" v-model="author_id" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-6 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option v-for="item in authors" :key="item.id" :value="`${ item.id }`" >{{item.name}}</option>
      </select>
      <br/><br/>
    </div>

    <button
        class="bg-emerald-400 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
        type="button"
        v-on:click="EditSong()"
    >
      submit
    </button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "EditSong",

  data(){
    return{
      song: [],
      name: '',
      album_id: '',
      author_id: '',
      genre_id: '',
      lyrics: '',
      singer_id: '',
      url: '',
      albums: [],
      authors: [],
      genres: [],
      singers: [],
    }
  },

  mounted() {
    setTimeout(() => {
      this.record.email = 'example@email.com'
    }, 500)
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/song/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.singer = res.data.data
      this.name = this.singer.name
      this.album_id = this.singer.album_id
      this.author_id = this.singer.author_id
      this.genre_id = this.singer.genre_id
      this.lyrics = this.singer.lyrics
      this.singer_id = this.singer.singer_id
      this.url = this.singer.url


      const resalbum = await axios.get('http://localhost:8080/album/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.albums = resalbum.data;
      console.warn(resalbum.data.data)
      this.albums = resalbum.data.data


      const resauthor = await axios.get('http://localhost:8080/author/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.authors = resauthor.data;
      console.warn(resauthor.data.data)
      this.authors = resauthor.data.data

      const ressinger = await axios.get('http://localhost:8080/singer/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.singers = ressinger.data;
      console.warn(ressinger.data.data)
      this.singers = ressinger.data.data

      const resgenre = await axios.get('http://localhost:8080/genre/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.genres = resgenre.data;
      console.warn(resgenre.data.data)
      this.genres = resgenre.data.data
    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    EditSong(){
      const credentials = {
        name: this.name,
        album_id: this.album_id,
        lyrics: this.lyrics,
        url: this.url,
        genre_id: this.genre_id,
        singer_id: this.singer_id,
        author_id: this.author_id,
      };
      axios
          .put("http://localhost:8080/song/update/" + this.$route.params.id,credentials, {
            headers: {
              "Authorization" : localStorage.getItem('token_admin')
            }
          })
          .then((response) => {
            console.log(response.data.token);
            localStorage.getItem('token_admin', response.data.token)
            this.$router.push({path: '/admin/song'})
          })
          .catch((err) => console.log(err.response));
    }
  }
}
</script>

<style scoped>

</style>