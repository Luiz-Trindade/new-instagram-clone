<template>
  <v-main>
    <router-view />
  </v-main>

  <bottom-navigation />
</template>

<script setup>
//
</script>

<style>
.background-blur {
  backdrop-filter: blur(5px) !important;
  background-color: rgba(0, 0, 0, 0.25) !important;
}

.fade-in {
  opacity: 0;
  animation: fadeIn 0.25s ease-in forwards;
}

@keyframes fadeIn {
  to {
    opacity: 1;
  }
}

.slide-in {
  animation: slideIn 0.25s ease-out forwards;
  opacity: 0;
  transform: translateX(100%);
}

@keyframes slideIn {
  to {
    opacity: 1;
    transform: translateX(0);
  }
}
</style>
