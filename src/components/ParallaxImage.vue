<template>
  <div class="parallax" :style="cssProps"></div>
</template>

<script>
export default {
  name: "ParallaxImage",
  props: {
    imageUrl: {
      type: String,
      required: true,
    },
  },
  computed: {
    cssProps() {
      return {
        "--background-image": `url(${this.imageUrl})`,
      };
    },
  },
};
</script>

<style scoped>
.parallax {
  /* The image used */
  background-image: var(--background-image);

  /* Set a specific height */
  /* min-height: 500px; */

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
