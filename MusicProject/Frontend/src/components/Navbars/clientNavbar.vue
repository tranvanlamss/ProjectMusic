<template>
  <div class="w-full top-0 py-6 px-6 flex items-center justify-between" style="background: #121212">
    <div class="flex items-center">
      <button onclick="window.history.back();" class="rounded-full bg-black w-8 h-8 text-white mr-3">
        <i class="material-icons text-5xl mt-1">keyboard_arrow_left</i>
      </button>

      <button onclick="window.history.forward();" class="rounded-full bg-black w-8 h-8 text-white">
        <i class="material-icons text-5xl mt-1">keyboard_arrow_right</i>
      </button>
    </div>
    <div class="relative">
      <button @click="showDropdownMethod()" style="background: #282828" class="focus:outline-none rounded-full py-1 px-2 flex items-center">
        <img :src="`${ users.avatar }`" class="rounded-full h-8 w-8 mr-2" alt="pfp">
        <p class="text-white font-semibold text-xs mr-3">{{ users.username }}</p>
        <i v-if="showDropdown === false" class="material-icons text-white">arrow_drop_down</i>
        <i v-if="showDropdown === true" class="material-icons text-white">arrow_drop_up</i>
      </button>
      <div v-if="showDropdown === true" class="absolute w-full rounded mt-1" style="background: #282828">
        <router-link to="/register" class="text-blueGray-200">
          <button class="focus:outline-none w-full text-sm py-2 hover:text-white border-b" style="color:#B3B3B3;">Account</button>
        </router-link>

        <button @click="logoutMethod()" class="focus:outline-none w-full text-sm py-2 hover:text-white" style="color:#B3B3B3;">Logout</button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "clientNavbar",
  data: function () {
    return {
      showDropdown: false,
      users: [],
    }
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/user/get-profile', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.users = res.data.data

    } catch (e) {
      console.error(e)
    }
  },

  methods: {
    showDropdownMethod() {
      if (this.showDropdown === true) {
        this.showDropdown = false
      } else {
        this.showDropdown = true
      }
    },

    logoutMethod() {
      localStorage.clear();
      this.$router.push({path: '/login'})
      location.reload()
    }
  }
}
</script>

<style scoped>

</style>