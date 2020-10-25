<template>
  <td
    id="center"
    rowspan="3"
    colspan="3"
  >
    <CenterMessage desktop />
  </td>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import CenterMessage from "./CenterMessage.vue";

export default defineComponent({
  name: "Center",
  components: { CenterMessage }
});
</script>

<style lang="scss" scoped>
#center {
  height: calc((100% / 14 + 3px) * 3);
  width: calc((100% / 14 + 3px) * 3);
  background-image: url(/img/yinyang.png);
  background-color: bisque !important;
  background-size: cover;
  position: relative;

  .piece {
    display: none;
  }
}
</style>