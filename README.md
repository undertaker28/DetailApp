# DetailApp

## Общее описание задания
__Создать приложение, которое состоит из двух экранов.__

__Первый экран__ содержит таблицу (UITableView), состоящую из 1000 элементов, которые можно перемещать и удалять.
Каждая ячейка таблицы содержит:
- Image — круглый серый бэкграунд, посередине иконка
- Текстовое поле, содержащее слово Title и порядковый номер элемента
- Текстовое поле, содержащее слово Description и порядковый номер элемента

__Внешний вид элемента__:
<p align="center"> 
<img src="https://user-images.githubusercontent.com/69767713/208305905-4ad93e9d-e287-4c68-ae58-661696cc4ff5.png" width="322" height="66">
</p>

С сайта https://material.io/resources/icons/ выкачать 10 иконок, отображать в Image ячейке.

При запуске приложения порядок отображения иконок фиксированный (11 иконка такая же, как и 1). Меняется только при перемещении или удалении элементов.

Нажатие на ячейку открывает __второй экран__, на котором отображается:
- Картинка выбранного элемента, увеличенная на 100% и расположенная по центру экрана
- Текстовые поля с описанием выбранного элемента, расположенные под картинкой (добавить в UIStackView)

Второй экран должен иметь NavigationBar (на первом его не должно быть) с кнопкой назад, которая закрывает контроллер и возвращает на предыдущий экран.

## Требования к приложению:
1. Элементы интерфейса размещать при помощи Autolayout
2. Вёрстка вся в коде без использования Storyboard и Xib
3. Приложение должно корректно себя вести в альбомной и портретной ориентации, а также на разных размерах экранов

## Установка
1) В корневом каталоге проекта запустить:
```bash
$ pod install
```
2) Открыть `DetailApp.xcworkspace` файл

## Стек
 - Swift
 - UIKit
 - MVС
 - SnapKit
 
## Вид на iPhone 14
### Портретная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307012-4a461213-43f3-4890-9a14-5c2714f79291.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307029-bcfd73ac-0ac8-4bd4-9b6b-61aed4354a03.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307044-d3c5a422-30a2-4eec-bf0f-63ffc30617b1.png" width="340" height="636"> |

</div>

### Альбомная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307273-150de250-e121-4b62-b969-f7e39ddf898b.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307299-d73d103d-a4f7-4b1e-b659-e819988cb32a.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307314-15a3fa8e-3fb9-4937-90b2-0e65c583ad1d.png" width="595" height="220"> |

</div>

## Вид на iPhone 12
### Портретная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307509-7b9060ed-522f-41a8-86db-2784405dab0d.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307516-69d95583-4b8a-49ed-8f6f-f507ec55a844.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307535-1a1a27a7-a2ee-4239-a37c-655a80223bbe.png" width="340" height="636"> |

</div>

### Альбомная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307924-40bce601-c9df-4d9f-b8f5-84d5b408c25d.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307551-954627cd-3262-4fe5-a8b2-404672ddb7f1.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307555-b61d80ee-4cd0-494a-8108-1c3418ad0424.png" width="595" height="220"> |

</div>

## Вид на iPhone X
### Портретная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307699-e5c4986e-02f2-47dc-8b5d-2a7d0df38a9e.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307711-c0adda82-25fe-423a-8b51-244c0768107c.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208307720-15abdd42-d828-4b97-aa06-8f5cf5688f69.png" width="340" height="636"> |

</div>

### Альбомная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307732-39931518-258e-4cfd-bfa3-a8c7fcfb88a9.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307740-07475fe1-18c8-4fdb-b42c-5a32206266e8.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208307748-a7975e49-8142-4cf7-94e5-9a6eb8b84ed2.png" width="595" height="220"> |

</div>

## Вид на iPhone 8
### Портретная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208307999-e75a072a-c2d4-43f3-9295-393e0b4cf2fd.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208308012-0b1ade0d-307d-4859-95ae-2d8aae8307e3.png" width="340" height="636"> | <img src="https://user-images.githubusercontent.com/69767713/208308016-f9f44ad9-a873-4593-9ead-7c772cd8e796.png" width="340" height="636"> |

</div>

### Альбомная ориентация
<div align="center">

|  Main view   | Edit mode   | Detail view |
| ------------ | ----------- | ----------- |
|  <img src="https://user-images.githubusercontent.com/69767713/208308030-a2bb4c75-826d-46ae-bff7-95f98c5d4ef5.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208308042-dd96e6f9-607d-4097-98f2-d26ea636484f.png" width="595" height="220"> | <img src="https://user-images.githubusercontent.com/69767713/208308052-48bca49e-01c0-4b24-abbc-3e4632c6ffb3.png" width="595" height="220"> |

</div>

### Демонстрация работы приложения
<div align="center">
  <video src="https://user-images.githubusercontent.com/69767713/208305974-6d593ccd-66bb-4541-8073-79a122e965b6.mp4"/>
<div/>
