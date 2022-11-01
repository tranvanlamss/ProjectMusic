<template>
  <div class="h-screen" style="background: #121212">
    <div class="flex" style="height: 88vh;">
      <!--  Side Nav    -->
      <client-sidebar/>
      <!--  main content    -->
      <div class="w-full h-full relative overflow-y-scroll">
        <!--  header  -->
        <client-navbar/>

        <!-- top track -->
        <div style="background: #424040; margin: 10px; padding-top: 20px; padding-bottom: 20px; border-radius: 10px">
          <div class="px-6 py-3">
            <div class="flex items-center justify-between pb-4">
              <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
                {{ tops_1_name.name }}</h1>
            </div>
            <div class="pt-2 w-full flex flex-wrap">
              <div v-for="song in tops_1" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
                <button @click="playSongFormCard(song.id)" class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:0"
                        onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                  <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                    <i class="material-icons text-white text-2xl">play_arrow</i>
                  </div>
                </button>

                <router-link :to="`/song_detail/${song.id}`">
                  <button class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:40px;"
                          onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                    <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                      <i class="material-icons text-white text-2xl">more_vert</i>
                    </div>
                  </button>
                </router-link>

                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img class="h-auto w-full shadow mb-2" :src="`${song.album.album_art}`" style="width: 136px; height: 136px; object-fit: cover" alt="cover_card">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
                  <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ song.author.name }}</h2>
                </div>
              </div>
            </div>
          </div>

          <div class="px-6 py-3">
            <div class="flex items-center justify-between pb-4">
              <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
                {{ tops_2_name.name }}</h1>
            </div>
            <div class="pt-2 w-full list-x-2" style="overflow-x: scroll; white-space: nowrap;">
              <div v-for="song in tops_2" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px; display: inline-block;">
                <button @click="playSongFormCard(song.id)" class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:0"
                        onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                  <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                    <i class="material-icons text-white text-2xl">play_arrow</i>
                  </div>
                </button>

                <router-link :to="`/song_detail/${song.id}`">
                  <button class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:40px;"
                          onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                    <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                      <i class="material-icons text-white text-2xl">more_vert</i>
                    </div>
                  </button>
                </router-link>

                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img class="h-auto w-full shadow mb-2" :src="`${song.album.album_art}`" style="width: 136px; height: 136px; object-fit: cover" alt="cover_card">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
                  <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ song.author.name }}</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- cards -->
        <div class="px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">
              Recenty Added</h1>
            <router-link to="/recently"><h2 class="pt-4 text-xs uppercase tracking-wide hover:underline"
                                                   style="color: #B3B3B3; padding-right: 2rem; padding-top: 1rem">See
              All</h2></router-link>
          </div>
          <div class="pt-2 w-full list-x" style="overflow-x: scroll; white-space: nowrap;">
            <div v-for="song in songs" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px; display: inline-block;">
              <button @click="playSongFormCard(song.id)" class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:0"
                   onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                  <i class="material-icons text-white text-2xl">play_arrow</i>
                </div>
              </button>

              <router-link :to="`/song_detail/${song.id}`">
                <button class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:40px;"
                        onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                  <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                    <i class="material-icons text-white text-2xl">more_vert</i>
                  </div>
                </button>
              </router-link>

              <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                <img class="h-auto w-full shadow mb-2" :src="`${song.album.album_art}`" alt="cover_card">
                <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
                <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ song.author.name }}</h2>
              </div>
            </div>
          </div>
        </div>

        <!-- cards 2 -->
        <div class="px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <div>
              <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Make For You</h1>
              <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">Get Better Recommendations The More You Listen.</h2>
            </div>
            <router-link to="/for-you"><h2 class="pt-4 text-xs uppercase tracking-wide hover:underline" style="color: #B3B3B3; padding-right: 2rem; padding-top: 1rem">See All</h2></router-link>
          </div>
          <div class="pt-2 w-full list-x-3" style="overflow-x: scroll; white-space: nowrap;">
            <div v-for="song in songs" :key="song.id" class="p-2 relative" style="width: 12rem; margin-right: 11px; display: inline-block;">
              <button @click="playSongFormCard(song.id)" class="absolute p-8 mt-1 ml-1" style="opacity: 0; bottom:0; right:0;"
                   onmouseover='this.style.opacity="100"' onmouseout='this.style.opacity="0"'>
                <div class="rounded-full h-10 w-10 flex items-center justify-center " style="background: green">
                  <i class="material-icons text-white text-2xl">play_arrow</i>
                </div>
              </button>
              <div class="-full h-auto p-5 rounded-lg shadow-md" style="background: #282828;">
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
import axios from "axios";
import ClientSidebar from "@/components/Sidebar/clientSidebar";
import ClientNavbar from "@/components/Navbars/clientNavbar";
import PlayBar from "@/components/Others/playBar";

export default {
  name: "Home",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      songs: [],
      tops_1: [],
      tops_1_name: [],
      tops_2: [],
      tops_2_name: [],
    }
  },
  mounted: function() {
    // list 1
    const slider = document.querySelector('.list-x');
    let isDown = false;
    let startX;
    let scrollLeft;

    slider.addEventListener('mousedown', (e) => {
      isDown = true;
      slider.classList.add('active');
      startX = e.pageX - slider.offsetLeft;
      scrollLeft = slider.scrollLeft;
    });
    slider.addEventListener('mouseleave', () => {
      isDown = false;
      slider.classList.remove('active');
    });
    slider.addEventListener('mouseup', () => {
      isDown = false;
      slider.classList.remove('active');
    });
    slider.addEventListener('mousemove', (e) => {
      if(!isDown) return;
      e.preventDefault();
      const x = e.pageX - slider.offsetLeft;
      const walk = (x - startX) * 3; //scroll-fast
      slider.scrollLeft = scrollLeft - walk;
    });

    // list 2
    const slider2 = document.querySelector('.list-x-2');
    let isDown2 = false;
    let startX2;
    let scrollLeft2;

    slider2.addEventListener('mousedown', (e) => {
      isDown2 = true;
      slider2.classList.add('active');
      startX2 = e.pageX - slider2.offsetLeft;
      scrollLeft2 = slider2.scrollLeft;
    });
    slider2.addEventListener('mouseleave', () => {
      isDown2 = false;
      slider2.classList.remove('active');
    });
    slider2.addEventListener('mouseup', () => {
      isDown2 = false;
      slider2.classList.remove('active');
    });
    slider2.addEventListener('mousemove', (e) => {
      if(!isDown2) return;
      e.preventDefault();
      const x = e.pageX - slider2.offsetLeft;
      const walk = (x - startX2) * 3; //scroll-fast
      slider2.scrollLeft = scrollLeft2 - walk;
    });

    // list 3
    const slider3 = document.querySelector('.list-x-3');
    let isDown3 = false;
    let startX3;
    let scrollLeft3;

    slider3.addEventListener('mousedown', (e) => {
      isDown3 = true;
      slider3.classList.add('active');
      startX3 = e.pageX - slider3.offsetLeft;
      scrollLeft3 = slider3.scrollLeft;
    });
    slider3.addEventListener('mouseleave', () => {
      isDown3 = false;
      slider3.classList.remove('active');
    });
    slider3.addEventListener('mouseup', () => {
      isDown3 = false;
      slider3.classList.remove('active');
    });
    slider3.addEventListener('mousemove', (e) => {
      if(!isDown3) return;
      e.preventDefault();
      const x = e.pageX - slider3.offsetLeft;
      const walk = (x - startX3) * 3; //scroll-fast
      slider3.scrollLeft = scrollLeft3 - walk;
    });
  },

  methods: {
    playSongFormCard(id) {
      this.$refs.modal.showModal(id);
    }
  },

  async created() {
    // Get All Song
    try {
      const res = await axios.get('http://localhost:8080/song/get-list', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.songs = res.data.data
      // console.log(res.data.data)

    } catch (e) {
      console.error(e)
    }

    // Get TOP SONG
    try {
      const res = await axios.get('http://localhost:8080/song/get-top-id/1', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.tops_1 = res.data.data
      // console.log(res.data.data)

    } catch (e) {
      console.error(e)
    }
    // Get Top Song name
    try {
      const res = await axios.get('http://localhost:8080/top/get-id/1', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.tops_1_name = res.data.data
      // console.log(res.data.data)

    } catch (e) {
      console.error(e)
    }

    // Get TOP SONG 2
    try {
      const res = await axios.get('http://localhost:8080/song/get-top-id/2', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.tops_2 = res.data.data
      // console.log(res.data.data)

    } catch (e) {
      console.error(e)
    }
    // Get Top Song name 2
    try {
      const res = await axios.get('http://localhost:8080/top/get-id/2', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.tops_2_name = res.data.data
      // console.log(res.data.data)

    } catch (e) {
      console.error(e)
    }

  },
}
</script>

<style scoped>
.list-x {
  overflow: scroll;
}
::-webkit-scrollbar {
  width: 0px;
  background: transparent; /* make scrollbar transparent */
}
</style>