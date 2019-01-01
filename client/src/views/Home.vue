<template>
  <v-container fluid class="home-page">
    <header class="menu">
      <div :class="[isClose ? 'menu-btns close' : 'menu-btns']" @click="isClose = !isClose">
        <div class="menu-btns__line icon-left"></div>
        <div class="menu-btns__line icon-right"></div>
      </div>
      <nav :class="[isClose ? 'menu-nav show' : 'menu-nav']">
        <div :class="[isClose ? 'menu-branding show' : 'menu-branding']">
          <div class="menu-branding__portrait"></div>
        </div>
        <ul :class="[isClose ? 'menu-nav__navbar show' : 'menu-nav__navbar']">
          <li :class="[isClose ? 'menu-nav__navbar-item current show' : 'menu-nav__navbar-item current']">
            <a href="!#" class="menu-nav__navbar-link">Home</a>
          </li>
          <li :class="[isClose ? 'menu-nav__navbar-item show' : 'menu-nav__navbar-item']">
            <a href="!#" class="menu-nav__navbar-link">About</a>
          </li>
          <li :class="[isClose ? 'menu-nav__navbar-item show' : 'menu-nav__navbar-item']">
            <router-link to="/dashboard" class="menu-nav__navbar-link">Dashboard</router-link>
          </li>
          <li :class="[isClose ? 'menu-nav__navbar-item show' : 'menu-nav__navbar-item']">
            <router-link to="/authentication/login" class="menu-nav__navbar-link">Login</router-link>
          </li>
          <li :class="[isClose ? 'menu-nav__navbar-item show' : 'menu-nav__navbar-item']">
            <router-link to="/authentication/register" class="menu-nav__navbar-link">Register</router-link>
          </li>
        </ul>
      </nav>
    </header>
    <main class="main-content">
      <h2 class="font-weight-bold main-content__heading1">
        admin
        <span class="accent--text">Doe</span>
      </h2>
      <h3 class="display-1 main-content__heading2">
        Performance Dashboard
      </h3>
    </main>
  </v-container>
</template>

<script>
export default {
  name: 'Home',
  data () {
    return {
      isClose: false
    }
  }
}
</script>

<style lang="scss" scoped>
@import '../sass/config';
@import '../sass/mixins';

.home-page {
  box-sizing: border-box;
}
.menu {
  &-btns {
    position: absolute;
    width: 30px;
    height: 30px;
    top: 35px;
    right: 35px;
    @include easeInOut;
    transition-duration: 0.5s;
    cursor: pointer;
    z-index: 5;
    &__line {
      cursor: pointer;
      transition-duration: 0.5s;
      position: absolute;
      height: 5px;
      width: 15px;
      top: 15px;
      background-color: set-text-color($primary-theme);
    }
    .icon-left {
      left: 0px;
      &::before {
        @include icon-before(5px, 15px, -10px, $primary-theme);
      }
      &::after {
        @include icon-after(5px, 15px, 10px, $primary-theme);
      }
    }
    .icon-right {
      left: 15px;
      &::before {
        @include icon-before(5px, 15px, -10px, $primary-theme);
      }
      &::after {
        @include icon-after(5px, 15px, 10px, $primary-theme);
      }
    }
    &.close {
      .icon-left {
        background: transparent;
        &::before {
          transform: rotateZ(45deg) scaleX(1.4) translate(4px, 2px);
        }
        &::after {
          transform: rotateZ(-45deg) scaleX(1.4) translate(4px, -2px);
        }
      }
      .icon-right {
        background: transparent;
        &::before {
          transform: rotateZ(-45deg) scaleX(1.4) translate(-4px, 2px);
        }
        &::after {
          transform: rotateZ(45deg) scaleX(1.4) translate(-4px, -2px);
        }
      }
    }
  }
  &-nav {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    opacity: 0.9;
    visibility: hidden;
    &.show {
      visibility: visible;
    }
  }
  &-branding, &-nav__navbar {
    display: flex;
    flex-flow: column wrap;
    align-items: center;
    justify-content: center;
    width: 50%;
    float: left;
    height: 100vh;
    overflow: hidden;
  }
  &-nav__navbar {
    margin: 0;
    padding: 0;
    background: darken($primary-theme, 5);
    list-style: none;
    transform: translate3d(0, -100%, 0);
    @include easeInOut;
    &.show {
      transform: translate3d(0, 0, 0);
    }
    &-item {
      @include easeInOut;
      transform: translate3d(600px, 0, 0);
      &.show {
        transform: translate3d(0, 0, 0);
      }
      &.current > a {
        color: $accent;
      }
    }
    &-link {
      display: inline-block;
      position: relative;
      font-size: 30px;
      text-transform: uppercase;
      padding: 1rem 0;
      font-weight: 400;
      color: set-text-color($primary-theme);
      text-decoration: none;
      @include easeInOut;
      &:hover {
        color: $accent;
      }
    }
  }
  &-branding {
    background: $primary-theme;
    transform: translate3d(0, 100%, 0);
    @include easeInOut;
    &.show {
      transform: translate3d(0, 0, 0);
    }
    &__portrait {
      width: 250px;
      height: 250px;
      background: url('../assets/portrait.jpg');
      border-radius: 50%;
    }
  }
}
.main-content {
  padding: 4rem;
  // min-height: calc(100vh - 40px);
  min-height: 100%;
  overflow: hidden;
  &__heading1, &__heading2 {
    margin: 0;
  }
  &__heading1 {
    font-size: 6rem;
    // line-height: 1.5 !important;
    letter-spacing: .005em;
    margin-top: 20vh;
  }
  &__heading2 {
    letter-spacing: .005em;
    font-weight: 500;
    margin-bottom: 2rem;
    padding: 0.2rem 1rem;
    background: rgba(lighten($primary-theme, 2), 0.5);
  }
}
@for $x from 1 through 5 {
  .menu-nav__navbar-item:nth-child(#{$x}) {
    transition-delay: $x * 0.1s;
  }
}
@include mediaMd {
  .main {
    &-content {
      align-items: center;
      text-align: center;
    }
    &-content__heading1 {
      line-height: 1;
      margin-bottom: 1rem;
    }
  }
  .menu-branding, .menu-nav__navbar {
    float: none;
    min-height: 0;
    width: 100%;
    &.show {
      transform: translate3d(0, 0, 0);
    }
  }
  .menu-nav__navbar {
    height: 75vh;
    transform: translate3d(-100%, 0, 0);
    font-size: 24px;
  }
  .menu-branding {
    height: 25vh;
    transform: translate3d(100%, 0, 0);
    &__portrait {
      background: url('../assets/portrait_small.jpg');
      width: 150px;
      height: 150px;
    }
  }
}

@include mediaSm {
  .main {
    &-content {
      padding: 2rem;
    }
    &-content__heading1 {
      margin-top: 10vh;
      font-size: 5rem;
    }
  }
}
</style>
