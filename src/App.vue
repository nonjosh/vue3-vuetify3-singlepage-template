<template>
  <v-app>
    <v-app-bar fixed>
      <v-spacer></v-spacer>
      <v-btn
        class="d-none d-md-block"
        v-for="item in items"
        :key="item.section_id"
        @click="scroll(item.section_id)"        
        >{{ item.title }}</v-btn
      >
      <v-menu anchor="start">
        <template v-slot:activator="{ props }">
          <v-app-bar-nav-icon v-bind="props" class="d-md-none"></v-app-bar-nav-icon>
        </template>
        <v-list>
          <v-list-item v-for="(item, index) in items" :key="index" :value="index">
            <v-list-item-title @click="scroll(item.section_id)">{{
              item.title
            }}</v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
    </v-app-bar>
    <v-main>
      <LaunchSection id="launch" />
      <TestSection1 id="section1" />
      <TestSection2 id="section2" />
      <TestSection3 id="section3" />
    </v-main>
  </v-app>
</template>

<script>
import LaunchSection from "@/components/LaunchSection.vue";
import TestSection1 from "@/components/TestSection1.vue";
import TestSection2 from "@/components/TestSection2.vue";
import TestSection3 from "@/components/TestSection3.vue";

export default {
  name: "App",

  components: {
    LaunchSection,
    TestSection1,
    TestSection2,
    TestSection3,
  },

  data: () => ({
    title: "Temp Title",
    items: [
      { title: "TOP", section_id: "launch" },
      { title: "Section 1", section_id: "section1" },
      { title: "Section 2", section_id: "section2" },
      { title: "Section 3", section_id: "section3" },
    ],
    miniVariant: false,
    right: true,
    rightDrawer: false,
    clipped: false,
    drawer: false,
    fixed: false,
  }),
  methods: {
    scroll(id) {
      document.getElementById(id).scrollIntoView({
        behavior: "smooth",
      });
    },
  },
};
</script>
