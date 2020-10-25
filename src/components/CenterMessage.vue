<template>
  <div
    class="center-message hide"
    :class="{desktop}"
  ></div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: 'CenterMessage',
  props: {
    desktop: {
      type: Boolean,
      default: false
    }
  }
})
</script>

<style lang="scss" scoped>
.center-message {
  padding: 5px;
  text-align: center;
  background-color: teal;
  color: whitesmoke;

  &.desktop {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
  }
}
</style>