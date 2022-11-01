<template>
  <div>
    <navbar />
    <main>
      <div
          class="relative pt-16 pb-32 flex content-center items-center justify-center min-h-screen-75"
      >
        <div
            class="absolute top-0 w-full h-full bg-center bg-cover"
            style="
                      background-image: url('https://img.lovepik.com/photo/40068/0420.jpg_wh860.jpg');

          "
        >
          <span
              id="blackOverlay"
              class="w-full h-full absolute opacity-75 bg-black"
          ></span>
        </div>
        <div class="container relative mx-auto">
          <div class="items-center flex flex-wrap">
            <div class="w-full lg:w-6/12 px-4 ml-auto mr-auto text-center">
              <div class="pr-12">
                <h1 class="text-white font-semibold text-5xl">
                  Âm nhạc vs soundlife
                </h1>
                <p class="mt-4 text-lg text-blueGray-200">
                  Với Spotify, bạn có thể dễ dàng tìm nhạc hoặc podcast thích hợp cho từng khoảnh khắc – trên điện thoại, máy tính, máy tính bảng và các thiết bị khác.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div
            class="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px"
            style="transform: translateZ(0);"
        >
          <svg
              class="absolute bottom-0 overflow-hidden"
              xmlns="http://www.w3.org/2000/svg"
              preserveAspectRatio="none"
              version="1.1"
              viewBox="0 0 2560 100"
              x="0"
              y="0"
          >
            <polygon
                class="text-blueGray-200 fill-current"
                points="2560 0 2560 100 0 100"
            ></polygon>
          </svg>
        </div>
      </div>

      <section class="pb-20 bg-blueGray-200 -mt-24">
        <div class="container mx-auto px-4">
          <div class="flex flex-wrap">
            <div class="lg:pt-12 pt-6 w-full md:w-4/12 px-4 text-center">
              <div
                  class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
              >
                <div class="px-4 py-5 flex-auto">
                  <div
                      class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400"
                  >
                    <i class="fas fa-award"></i>
                  </div>
                  <h6 class="text-xl font-semibold">nhưng bản nhạc hot cập nhật</h6>
                  <p class="mt-2 mb-4 text-blueGray-500">
                    Có hàng triệu bản nhạc và tập nội dung trên soundlife.
                  </p>
                </div>
              </div>
            </div>

            <div class="w-full md:w-4/12 px-4 text-center">
              <div
                  class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
              >
                <div class="px-4 py-5 flex-auto">
                  <div
                      class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-lightBlue-400"
                  >
                    <i class="fas fa-retweet"></i>
                  </div>
                  <h6 class="text-xl font-semibold">Hãy để cuộc sống</h6>
                  <p class="mt-2 mb-4 text-blueGray-500">
                    Hãy để cuộc sống của bạn tràn ngập tiếng nhạc với soundlife. Bạn có thể đăng ký hoặc nghe miễn phí.
                  </p>
                </div>
              </div>
            </div>

            <div class="pt-6 w-full md:w-4/12 px-4 text-center">
              <div
                  class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
              >
                <div class="px-4 py-5 flex-auto">
                  <div
                      class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-emerald-400"
                  >
                    <i class="fas fa-fingerprint"></i>
                  </div>
                  <h6 class="text-xl font-semibold">Những bản nhạc phong phú</h6>
                  <p class="mt-2 mb-4 text-blueGray-500">
                    dù đang lái xe, tập thể dục, dự tiệc hay thư giãn, bạn luôn có thể dễ dàng chọn được nhạc hoặc podcast phù hợp dù đang lái xe, tập thể dục, dự tiệc hay thư giãn, bạn luôn có thể dễ dàng chọn được nhạc hoặc podcast phù hợp
                  </p>
                </div>
              </div>
            </div>

          </div>
        </div>
      </section>
    </main>
    <footer-component />
  </div>
</template>
<script>
import Navbar from "@/components/Navbars/AuthNavbar.vue";
import FooterComponent from "@/components/Footers/Footer.vue";

import team1 from "@/assets/img/team-1-800x800.jpg";
import team2 from "@/assets/img/team-2-800x800.jpg";
import team3 from "@/assets/img/team-3-800x800.jpg";
import team4 from "@/assets/img/team-4-470x470.png";

export default {
  data() {
    return {
      team1,
      team2,
      team3,
      team4,
    };
  },
  components: {
    Navbar,
    FooterComponent,
  },
};
</script>
