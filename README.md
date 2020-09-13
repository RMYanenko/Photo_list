Photo list
Flutter project

Реализация галереи(списка фотографий) с использованием REST API из сайта <a href="https://unsplash.com/">unsplash</a>.  в виде мобильного приложения на Flutter с использованием языка Dart.

Приложение должно содержать два экрана:
* Список
- мини изображение с автором и описанием.<br>

![Screenshot_1600027661](https://user-images.githubusercontent.com/47691558/93027736-b8016000-f617-11ea-9107-3269dc5e8756.png)

- когда пользователь нажимает на изображение, открывается экран фотографии.<br>
Фотография:
- отображает одну фотографию с максимальной площадью.<br>
![Screenshot_1600031495](https://user-images.githubusercontent.com/47691558/93028808-fe0df200-f61e-11ea-902f-f1c7a11d019b.png)

В процессе написания приложения дополнительно было добавлено две библиотеки:
http для упрощают использование ресурсов HTTP;
animate_do - библиотека анимаций.

Были использованы Class: StatefulWidget, StatelessWidget, Scaffold, GestureDetector, Center, Navigator, ListTile, Text, Image, Container, ListView, Image.network, CircularProgressIndicator, constructor.

Асинхронное программирование: futures с помощью async, await.
