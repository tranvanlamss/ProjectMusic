<template>
  <div class="w-full flex items-center justify-between px-3" style="background: #282828; height: 12vh">
    <div class="flex items-center" style="width: 13%">

      <div class="w-40" style="width: 5rem; margin-right: 10px">
        <img :src="`${album}`" alt="cover_playing" style="object-fit: cover">
      </div>
      <div>
        <h1 class="text-sm font-semibold text-white tracking-wide">{{ song.name }}</h1>
        <h2 class="text-xs text-white tracking-wide">{{ song.artist }}</h2>
      </div>
    </div>

    <div style="" class="flex flex-col justify-center items-center">
      <div class="flex items-center">
        <button class="text-lg hover:text-white px-3" style="color: #B3B3B3"><i class="material-icons text-lg"
                                                                                style="font-size: 1.5em;">shuffle</i>
        </button>

        <button class="text-lg hover:text-white px-3" style="color: #B3B3B3"><i class="material-icons"
                                                                                style="font-size: 1.7em;">skip_previous</i>
        </button>
        <button @click.prevent="togglePlay(), togglePlayButton()" class="text-lg hover:text-white px-3" style="color: #B3B3B3">
          <i v-if="pause === false" class="material-icons" style="font-size: 3em;">play_circle_outline</i>
          <i v-if="pause === true" class="material-icons" style="font-size: 3em;">pause_circle_outline</i>
          <audio id="myAudio" :src="`${song.url}`" preload="auto"></audio>
        </button>

        <button class="text-lg hover:text-white px-3" style="color: #B3B3B3"><i class="material-icons" style="font-size: 1.7em;">skip_next</i>
        </button>

        <button class="text-lg hover:text-white px-3" style="color: #B3B3B3"><i class="material-icons text-lg" style="font-size: 1.5em;">repeat</i>
        </button>
      </div>
    </div>


  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "playBar",
  data: function () {
    return {
      pause: false,
      song: [
        {
          name: 'Name Song',
          artist: 'Artist'
        }
      ],
      album: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJXu4EbngYwzHTmL_WwBf0QEdG_5mMEH8RCQ&usqp=CAU'
    }
  },
  methods: {
    togglePlay() {
      var myAudio = document.getElementById("myAudio");
      return myAudio.paused ? myAudio.play() : myAudio.pause();
    },

    togglePlayButton() {
      if (this.pause === false) this.pause = true
      else this.pause = false
    },

    showModal(id) {
      try {
        this.song.url = null
        axios.get('http://localhost:8080/song/get-id/' + id , {
          headers: {
            "Authorization": localStorage.getItem('token')
          }
        }).then(res => {
          this.song = res.data;
          console.log(res.data.data)
          this.song = res.data.data
          this.album = this.song.album.album_art
          this.artist = this.song.author.name
        }).finally(() => {
          var myAudio = document.getElementById("myAudio");
          myAudio.play()
          this.pause = true
        });
      } catch (e) {
        console.error(e)
      }
    }
  },
}
</script>

<style scoped>

</style>