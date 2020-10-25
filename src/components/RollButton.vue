<template>
  <button class="roll hide">ROLL DICE</button>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "RollButton"
});
</script>

<style lang="scss" scoped>
.roll {
  background-color: tomato;

  @media (max-width: 767px) {
    position: unset;
    padding: 16px;
    border-radius: 16px;
    width: 100%;
    margin-top: 20px;
  }
}
</style>
