<template>
  <div id="options">
    <div>
      <span>Player 1</span>

      <ColorSelect
        :color-index="0"
        :player-index="0"
        default="yellow"
      />
      <ColorSelect
        :color-index="1"
        :player-index="0"
      />
    </div>

    <div>
      <span>Player 2</span>

      <ColorSelect
        :color-index="0"
        :player-index="1"
      />
      <ColorSelect
        :color-index="1"
        :player-index="1"
      />
    </div>

    <div>
      <span>Player 3</span>

      <ColorSelect
        :color-index="0"
        :player-index="2"
      />
    </div>

    <div>
      <span>Player 4</span>

      <ColorSelect
        :color-index="0"
        :player-index="3"
      />
    </div>

    <hr />

    <div class="buttons">
      <button id="play">Play &gt;</button>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import ColorSelect from "./ColorSelect.vue";

export default defineComponent({
  name: "Options",
  components: { ColorSelect }
});
</script>

<style lang="scss">
#options {
  select {
    margin-bottom: 10px;
  }
}
</style>

<style lang="scss" scoped>
#options {
  min-width: 20vw;
  max-width: 80vw;
  background-color: bisque;
  padding: 20px;

  span {
    margin-right: 10px;
  }

  select {
    margin: 0 5px 5px 0;
  }

  .buttons {
    text-align: center;
  }

  @media (max-width: 767px) {
    width: 90vw;

    & > div {
      margin-bottom: 10px;
    }
  }
}
</style>