<template>
  <select v-bind="$attrs">
    <option value="">-- Choose color --</option>
    <option
      class="yellow"
      selected
    >Yellow</option>
    <option class="green">Green</option>
    <option class="red">Red</option>
    <option class="blue">Blue</option>
  </select>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "ColorSelect",
  props: {
    colorIndex: {
      type: Number,
      required: true
    },
    playerIndex: {
      type: Number,
      required: true
    }
  }
});
</script>