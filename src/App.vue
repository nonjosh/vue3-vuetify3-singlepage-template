<template>
  <v-app>
    <v-main>
      <LaunchSection />
      <TestSection1 />
      <TestSection2 />      
      <HelloWorld />
    </v-main>
  </v-app>
</template>

<script>
import LaunchSection from "@/components/LaunchSection.vue";
import HelloWorld from "@/components/HelloWorld.vue";
import TestSection1 from "@/components/TestSection1.vue";
import TestSection2 from "@/components/TestSection2.vue";

export default {
  name: "App",

  components: {
    LaunchSection,
    HelloWorld,
    TestSection1,
    TestSection2
  },

  data: () => ({
    //
  }),
};
</script>
