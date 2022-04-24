<template>
  <ParallaxImage :image-url="imageUrl" style="height: 100vh" />
</template>

<script>
import ParallaxImage from "@/components/ParallaxImage.vue";

export default {
  components: {
    ParallaxImage,
  },
  data() {
    return {
      imageUrl: `https://images.unsplash.com/photo-1429979787503-f2d7d20550c8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=905cec6df3d8ee5b1655bc19b980bae9&auto=format&fit=crop&w=1462&q=80`,
    };
  },
};
</script>
