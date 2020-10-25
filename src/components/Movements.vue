<template>
  <div
    id="movements"
    class="hide"
  >
    <div class="moves">
      <a
        href="#"
        class="first move"
      >
        <div></div>
      </a>

      <span class="sign"> + </span>

      <a
        href="#"
        class="second move"
      >
        <div></div>
      </a>

      <span class="sign"> = </span>

      <a
        href="#"
        class="sum move"
      >
        <div></div>
      </a>

      <a
        href="#"
        class="close"
      >x</a>
    </div>

    <div class="message hide">
      <span></span>
      <button>OK</button>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Movements"
});
</script>

<style lang="scss" scoped>
#movements {
  min-width: 20vw;
  max-width: 80vw;
  background-color: bisque;
  padding: 20px;
  position: absolute;
  top: 60%;

  .message {
    background-color: tomato;
    color: whitesmoke;
    width: 100%;
    padding: 5px;
    text-align: center;
  }

  .moves {
    display: flex;
    justify-content: space-evenly;
    align-items: center;

    .close {
      position: absolute;
      top: -18px;
      right: -18px;
      padding: 6px 12px;
      border: 1px solid darkred;
      background-color: darkred;
      color: whitesmoke;
      border-radius: 20px;
    }

    .move {
      padding: 20px;
      border: 2px dashed;
    }

    .sign {
      padding: 5px;
    }

    .moved,
    .not-movable {
      background-color: darkgray;
      border-width: 1px;
      cursor: not-allowed;
    }

    &:not(.hide) + .message {
      margin-top: 10px;

      > button {
        display: none;
      }
    }
  }

  @media (max-width: 767px) {
    top: unset;
    bottom: 0;
  }
}
</style>