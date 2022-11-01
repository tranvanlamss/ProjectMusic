<template>
  <div class="h-screen" style="background: #121212">
    <div class="flex" style="height: 88vh;">
      <!--  Side Nav    -->
      <client-sidebar/>
      <!--  main content    -->
      <div class="w-full h-full relative overflow-y-scroll" id="mainSearch">
        <!--  header  -->
        <client-navbar/>
        <!-- search bar -->
        <div class="px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <input v-model="search" @keyup.enter="updateMyValue()"
                   style="background: #282828; margin-right: 20px; color: white"
                   class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                   id="search" type="text" placeholder="Insert Song Here">
          </div>
        </div>

        <!-- Song query -->
        <div id="search_title_1" class="px-6 py-3 hidden">
          <div class="flex items-center justify-between pb-4">
            <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
              If You Are Looking For Song!</h1>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="song in songs" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
              <button @click="playSongFormCard(song.id)"
                      class="absolute w-full h-full flex items-end justify-end p-8 mt-1 ml-1" style="opacity: 0"
                      onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                  <i class="material-icons text-white text-2xl">play_arrow</i>
                </div>
              </button>
              <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                <img class="h-auto w-full shadow mb-2" style="object-fit: cover; width: 150px; height: 136px" :src="`${song.album.album_art}`" alt="cover_card">
                <div class="text-ellipsis">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
                </div>
                <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ song.author.name }}</h2>
              </div>
            </div>
          </div>
        </div>

        <!-- Artist query -->
        <div id="search_title_2" class="hidden px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
              If You Are Looking For Artists!</h1>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="singer in artists" :key="singer.id" class="p-2 relative"
                 style="width: 19.5rem; margin-right: 11px">
              <router-link :to="`/artists_detail/${ singer.id }`">
                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img style="object-fit: cover; width: 500px; height: 260px" class="h-auto w-full shadow mb-2"
                       :src="`${ singer.image_url }`" alt="cover_card">
                  <h1 class="text-lg font-semibold text-white text-center p-5 tracking-wide">{{ singer.name }}</h1>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <!-- MV query -->
        <div id="search_title_3" class="px-6 py-3 hidden">
          <div class="flex items-center justify-between pb-4">
            <h1 class=" text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
              If You Are Looking For MV!</h1>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="video in mv" :key="video.id" class="p-2 relative" style="width: 19.5rem; margin-right: 11px">
              <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                <img class="h-auto w-full shadow mb-2" style="object-fit: cover; height: 150px"
                     :src="`${video.thumbnail}`" alt="cover_card">
                <h1 class="text-sm font-semibold text-white tracking-wide">{{ video.name }}</h1>
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
  name: "Search",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      search: '',
      songs: [],
      artists: [],
      mv: [],
    }
  },

  methods: {
    playSongFormCard(id) {
      this.$refs.modal.showModal(id);
    },

    updateMyValue() {
      const search_title_1 = document.getElementById('search_title_1');

      axios.get('http://localhost:8080/song/get-list-song-name/' + this.search, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      }).then(res => {
        console.log(res.data.data)
        if (res.data.data.length === 0) {
          this.songs = []
          search_title_1.classList.add("hidden");
        } else {
          this.songs = res.data.data
          search_title_1.classList.remove("hidden");
        }
      }).catch(() => {
        console.log('not found')
        this.songs = []
        search_title_1.classList.add("hidden");
      });

      const search_title_2 = document.getElementById('search_title_2');

      axios.get('http://localhost:8080/author/get-list-author-name/' + this.search, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      }).then(res => {
        console.log(res.data.data)
        if (res.data.data.length === 0) {
          this.artists = []
          search_title_2.classList.add("hidden");
        } else {
          this.artists = res.data.data
          search_title_2.classList.remove("hidden");
        }
      }).catch(() => {
        console.log('not found')
        this.artists = []
        search_title_2.classList.add("hidden");
      });

      const search_title_3 = document.getElementById('search_title_3');

      axios.get('http://localhost:8080/mv/get-name/' + this.search, {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      }).then(res => {
        console.log(res.data.data)
        if (res.data.data === null) {
          this.mv = []
          search_title_3.classList.add("hidden");
        } else {
          this.mv = [res.data.data]
          search_title_3.classList.remove("hidden");
        }
      }).catch(() => {
        console.log('not found')
        this.mv = []
        search_title_3.classList.add("hidden");
      });
    },

  },
}
</script>

<style scoped>

</style>