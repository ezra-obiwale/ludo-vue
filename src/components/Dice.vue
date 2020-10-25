<template>
  <div id="dice">
    <div
      id="die-1"
      class="die"
    ></div>
    <div
      id="die-2"
      class="die"
    ></div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Dice"
});
</script>

<style lang="scss">
#dice {
  position: absolute;
  top: 0;
  width: 100vh;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 5px 0;
  z-index: 1;

  .die {
    position: absolute;
    height: calc(100% / 14 + 3px);
    width: calc(100% / 14 + 3px);
    align-items: center;
    justify-content: center;
    flex-direction: column;

    &#die-1 {
      right: 50vh;
    }

    &#die-2 {
      left: 50vh;
    }

    .dice {
      position: absolute !important;
    }
  }

  @media (max-width: 767px) {
    position: unset;
    top: unset;
    width: unset;
    height: 10vh;
    padding: 10px;

    .die {
      position: relative;
      height: 10vh;
      width: 10vh;

      &#die-1 {
        right: unset;
      }

      &#die-2 {
        left: unset;
      }
    }
  }
}
</style>