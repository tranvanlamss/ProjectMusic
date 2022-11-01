<template>
  <div class="h-screen" style="background: #121212">
    <div class="flex" style="height: 88vh;">
      <!--  Side Nav    -->
      <client-sidebar/>
      <!--  main content    -->
      <div class="w-full h-full relative overflow-y-scroll">
        <!--  header  -->
        <client-navbar/>
        <!-- cards -->
        <div class="px-6 py-3">
          <div class="pb-4 pl-4" style="background: #2a1441">
            <div class="flex items-center">
              <img style="margin-left: 10px; margin-top: 30px; object-fit: cover; width: 260px; height: 260px"
                   :src="`${song.album.album_art}`" class="h-auto w-full shadow mb-2" alt="cover_card">
              <div>
                <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline"
                    style="padding-left: 2rem; padding-bottom: 10px">{{ song.name }}</h1>
                <h2 class="font-semibold text-white tracking-wide hover:underline"
                    style="padding-left: 2rem; padding-bottom: 5px"><b>Artist</b>: <a :href="`/artists_detail/${ song.author.id }`">{{ song.author.name }}</a></h2>
                <h2 class="font-semibold text-white tracking-wide hover:underline"
                    style="padding-left: 2rem; padding-bottom: 5px"><b>Album</b>:  <a :href="`/album_detail/${ song.album.id }`">{{ song.album.name }}</a></h2>
                <h2 class="font-semibold text-white tracking-wide hover:underline"
                    style="padding-left: 2rem; padding-bottom: 5px"><b>Genre</b>: <a :href="`/genre_detail/${ song.genre.id }`">{{ song.genre.name }}</a></h2>
                <div class="flex items-center">
                  <button @click="playSongFormCard(song.id)" class="flex items-center"
                          style="padding-left: 2rem; margin-top: 10px">
                    <div class="h-10 w-10 flex items-center justify-center " style="background: green">
                      <i class="material-icons text-white text-2xl">play_arrow</i>
                    </div>
                    <h1 style="padding-left: 10px" class="text-white tracking-wide hover:underline">Play</h1>
                  </button>

                  <button @click="addToPlaylist()" class="flex items-center"
                          style="padding-left: 2rem; margin-top: 10px">
                    <div class="h-10 w-10 flex items-center justify-center " style="background: green">
                      <i class="material-icons text-white text-2xl">playlist_add</i>
                    </div>
                    <h1 style="padding-left: 10px" class="text-white tracking-wide hover:underline">Add To Playlist</h1>
                  </button>
                </div>
              </div>
            </div>
            <!-- Comment Audio -->
            <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline"
                style="padding-left: 0.5rem; padding-top: 50px">Comments</h1>
            <input v-model="newComments" @keyup.enter="uploadComment()"
                   style="background: #282828; color: white; margin-top: 15px; width: 600px; margin-left: 8px"
                   class="shadow appearance-none border border-red-500 rounded py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                   id="search" type="text" placeholder="Say Something...">
            <div class="flex items-center my-6" v-for="comment in comments" :key="comment.id">
              <img style="margin-left: 10px; object-fit: cover; width: 50px; height: 50px"
                   :src="`${comment.user.avatar}`" class="h-auto w-full shadow" alt="cover_card">
              <div style="padding-left: 10px">
                <h1 class="font-semibold text-white tracking-wide hover:underline" style="">{{ comment.user.username }}</h1>
                <h2 class="text-white tracking-wide hover:underline" style="">{{comment.description }}</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Add To Playlist -->
    <div id="addSongToPlaylist" class="css-vh-center hidden" style="background: #282828; width: 100%; height: 100%">
      <div class="css-vh-center">
        <div class="" style="background: white;  width: 500px;height: 500px ; border-radius: 8px">
          <div class="flex justify-center" style="width: 100%">
            <div class="mb-3" style="width: 80%">
              <div class="input-group relative flex flex-wrap items-stretch w-full mb-4">
                <h1 style="color: black; padding-left: 1px; padding-bottom: 10px; padding-top: 10px"><b>Add To
                  Playlist</b></h1>
                <input type="text" style="width: 100%" v-model="search"
                       class="form-control relative flex-auto min-w-0 block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                       placeholder="Search" aria-label="Search" aria-describedby="button-addon3">
              </div>

              <div style="height: 370px; overflow-y: scroll">
                <div v-for="playlist in filteredList" :key="playlist.id" class="flex items-center"
                     style="padding-bottom: 10px">
                  <img :src="`${ playlist.image_url }`" alt=""
                       style="width: 50px; height: 50px; object-fit: cover">
                  <div style="padding-left: 20px" class="flex items-center">
                    <h1 style="color: black">{{ playlist.name }}</h1>

                    <button v-on:click="addSongToPlaylist(playlist.id)" class="flex items-center"
                            style="padding-left: 2rem;">
                      <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: #600080">
                        <i class="material-icons text-white text-2xl">add</i>
                      </div>

                    </button>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--  play bar    -->
    <play-bar ref="modal"/>
  </div>
</template>

<script>
import ClientSidebar from "@/components/Sidebar/clientSidebar";
import PlayBar from "@/components/Others/playBar";
import ClientNavbar from "@/components/Navbars/clientNavbar";
import axios from "axios";

export default {
  name: "SongDetail",

  components: {ClientNavbar, PlayBar, ClientSidebar},

  data: function () {
    return {
      // Call Out Data?
      song: [],
      comments: [],
      playlists: [],
      newComments: "",
      search: "",
    }
  },

  methods: {
    playSongFormCard(id) {
      this.$refs.modal.showModal(id);
    },

    uploadComment() {
      const data = {
        description : this.newComments
      }
      axios.post('http://localhost:8080/comment-song/create/' + this.$route.params.id, data, {
        headers: {
          "Authorization": localStorage.getItem('token'),
        }
      }).then(() => {
        location.reload();
      }).catch((err) => {
        alert('Failed!')
        console.log(err)
      })
    },

    addToPlaylist() {
      const element = document.getElementById("addSongToPlaylist");
      element.classList.remove("hidden");
    },

    addSongToPlaylist(id) {

      const data = {playlist_id: id}

      axios.post('http://localhost:8080/pivot/create/' + this.$route.params.id, data, {
        headers: {
          "Authorization": localStorage.getItem('token'),
        }
      }).then(() => {
        alert('Success!');
      }).catch((err) => {
        alert('Failed!')
        console.log(err)
      })

      const element = document.getElementById("addSongToPlaylist");
      element.classList.add("hidden");

    }
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/song/get-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.song = res.data.data

    } catch (e) {
      console.error(e)
    }

    try {
      const res = await axios.get('http://localhost:8080/playlist/get-all', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.playlists = res.data.data

    } catch (e) {
      console.error(e)
    }

    try {
      const res = await axios.get('http://localhost:8080/comment-song/get-comment-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.comments = res.data.data

    } catch (e) {
      console.error(e)
    }
  },

  computed: {
    filteredList() {
      return this.playlists.filter(playlist => {
        return playlist.name.toLowerCase().includes(this.search.toLowerCase())
      })
    }
  }
}
</script>

<style scoped>
.css-vh-center {
  position: fixed; /* or absolute */
  top: 50%;
  left: 50%;
  /* bring your own prefixes */
  transform: translate(-50%, -50%);
}
</style>