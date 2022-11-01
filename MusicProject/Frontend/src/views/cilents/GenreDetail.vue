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
              <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 2rem; padding-top: 50px; padding-bottom: 50px">{{ genre.name }}</h1>
            </div>
          </div>
        </div>
        <!-- cards 1 -->
        <div class="px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Songs</h1>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="song in songs" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
              <button @click="playSongFormCard(song.id)" class="absolute w-full h-full flex items-end justify-end p-8 mt-1 ml-1" style="opacity: 0"
                      onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                  <i class="material-icons text-white text-2xl">play_arrow</i>
                </div>
              </button>
              <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                <img class="h-auto w-full shadow mb-2" :src="`${song.album.album_art}`" alt="cover_card">
                <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
                <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ song.author.name }}</h2>
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
import ClientNavbar from "@/components/Navbars/clientNavbar";
import PlayBar from "@/components/Others/playBar";
import axios from "axios";
export default {
  name: "GenreDetail",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      genre: [],
      songs: []
    }
  },

  methods: {
    playSongFormCard(id) {
      this.$refs.modal.showModal(id);
    }
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

    } catch (e) {
      console.error(e)
    }

    try {
      const res2 = await axios.get('http://localhost:8080/song/get-genre-id/' + this.$route.params.id, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res2.data.data)
      this.songs = res2.data.data

    } catch (e) {
      console.error(e)
    }
  },

}
</script>

<style scoped>

</style>