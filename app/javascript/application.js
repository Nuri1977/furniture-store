// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.addEventListener('load', () => {
  const hamburgerBtn = document.getElementById('hamburger-btn');
  const navbar = document.getElementById('navbar');
  const menu = document.getElementById('mobile-menu');
  const menu1 = document.getElementById('mobile-menu1');
  const backdrop = document.getElementById('backdrop');
  hamburgerBtn.addEventListener('click', () => {
    console.log('Nuri trup');
    navbar.classList.add('h-screen');
    menu.classList.remove('hidden');
    menu1.classList.remove('hidden');
    backdrop.classList.remove('hidden');
  });

  backdrop.addEventListener('click', () => {
    navbar.classList.remove('h-screen');
    menu.classList.add('hidden');
    menu1.classList.add('hidden');
    backdrop.classList.add('hidden');
  });
});
