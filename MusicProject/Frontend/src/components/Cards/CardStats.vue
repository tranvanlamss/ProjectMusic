<template>
  <div
    class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg"
  >
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "card-stats",

  data () {
    return {
      usercounts: null,
      songcounts: null,
    }
  },

  mounted () {
    axios
        .get('http://localhost:8080/count/get-count-user', {
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
        .then(response => (this.usercounts = response.data)),

    axios
        .get('http://localhost:8080/count/get-count-song', {
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
        .then(response => (this.songcounts = response.data))
  },

  props: {
    statSubtitle: {
      type: String,
    },
    statTitle: {
      type: String,
    },
    statArrow: {
      default: "up",
      validator: function (value) {
        // The value must match one of these strings
        return ["up", "down"].indexOf(value) !== -1;
      },
    },
    statPercent: {
      type: String,
    },
    // can be any of the text color utilities
    // from tailwindcss
    statPercentColor: {
      type: String,
    },
    statDescripiron: {
      type: String,
    },
    statIconName: {
      type: String,
    },
    // can be any of the background color utilities
    // from tailwindcss
    statIconColor: {
      type: String,
    },
  },
};
</script>
