<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 mx-auto w-full">

          <div class="overflow-x-auto relative">
            <router-link
                to="/admin/createplaylistsong"
            >
              <button class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-blueGray-300 py-2 px-4 border border-blue-500 hover:border-transparent rounded">
                Add Playlist
              </button>
            </router-link>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
              <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th scope="col" class="py-3 px-6">
                  Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Playlist Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Song Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Status
                </th>
                <th scope="col" class="py-3 px-6">
                  Action
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="playlistsong in playlistsongs" :key="playlistsong.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{playlistsong.id}}
                </th>
                <td class="py-4 px-6">
                  {{playlistsong.playlist_id}}
                </td>
                <td class="py-4 px-6">
                  {{playlistsong.song_id}}
                </td>
                <td class="py-4 px-6">
                  {{playlistsong.deleted}}
                </td>
                <td class="py-4 ">
                  <button class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4" @click="clickEdit(item)">Edit</button>
                  <button class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4" @click="deletePlaylistSong(playlistsong.id)">Delte</button>
                </td>
              </tr>
              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "PlaylistSong",
  data: () => ({
    playlistsongs: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/pivot', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.playlistsongs = res.data;
      console.warn(res.data.data)
      this.playlistsongs = res.data.data
      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  },
  methods: {
    deletePlaylistSong(id) {
      let text = "Are You ACTUALLY Want To Delete It!";
      if (confirm(text) == true) {
        axios.delete("http://localhost:8080/pivot/delete/" + id,{
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
            .then((res) => {
              console.log(res)
            })
            .catch(function (error) {
              console.log(error.res)
            })
      } else {
        return;
      }

    }
  }
}
</script>

<style scoped>

</style>