<template>
  <div id="app">
    <router-view />
  </div>
</template>

<style>
button:active, button:focus {
  outline: 0;
  border: none;
  -moz-outline-style: none;
}

.text-ellipsis {
  overflow: hidden;
  text-overflow: ellipsis;
  -webkit-line-clamp: 2;
  display: -webkit-box;
  -webkit-box-orient: vertical;
}
</style>
