<template>
  <a
    href="#"
    :class="`piece ${color}`"
    @click.prevent
  ></a>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Piece",
  props: {
    color: {
      type: String,
      required: true
    }
  }
});
</script>

<style lang="scss">
.piece {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  text-decoration: none;
  z-index: 2;
  border: 1px solid;
  border-radius: 100px;

  &.active {
    z-index: 9;
  }

  &.moving {
    z-index: 10;
    border-style: dashed;
  }

  & > div {
    border: 1px solid;
    border-radius: 100px;
    padding-bottom: 70%;
  }
}
</style>