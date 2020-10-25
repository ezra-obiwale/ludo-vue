<template>
  <td
    class="step"
    :class="{ 'corridor-entrance no-color': entrance, blue, yellow, red, green, corridor, start }"
  >
    <span
      v-if="arrow"
      :class="`arrow ${arrow}`"
    >&rarr;</span>

    <PieceCover />
  </td>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import PieceCover from "./PieceCover.vue";

export default defineComponent({
  name: "Step",
  components: { PieceCover },
  props: {
    arrow: {
      type: String
    },
    blue: {
      type: Boolean,
      default: false
    },
    corridor: {
      type: Boolean,
      default: false
    },
    entrance: {
      type: Boolean,
      default: false
    },
    green: {
      type: Boolean,
      default: false
    },
    number: {
      type: Number,
      required: true
    },
    red: {
      type: Boolean,
      default: false,
    },
    start: {
      type: Boolean,
      default: false
    },
    yellow: {
      type: Boolean,
      default: false
    }
  }
});
</script>

<style lang="scss">
.step {
  &.blue,
  &.green,
  &.red {
    .piece {
      border-color: whitesmoke;
    }
  }
}
</style>

<style lang="scss" scoped>
.arrow {
  position: absolute;
  font-size: 48px;
  z-index: 1;

  &.ne {
    top: -35px;
    right: -20px;
    transform: rotate(-45deg);
  }

  &.se {
    top: -35px;
    left: -20px;
    transform: rotate(45deg);
  }

  &.sw {
    bottom: -35px;
    left: -20px;
    transform: rotate(135deg);
  }

  &.nw {
    bottom: -35px;
    right: -20px;
    transform: rotate(225deg);
  }
}
</style>