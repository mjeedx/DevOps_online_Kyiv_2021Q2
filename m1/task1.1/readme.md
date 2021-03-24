Сперва обновляем систему и устанавливаем Git:
```
sudo apt update && sudo apt upgrade && sudo apt -y install git
```
Настраиваем глобальные настроки Гита:
```
git config user email mjee245@gmail.com && git config user name mJeedx
```
Нужно создать аккаунт на Github. Я использую свой, уже существующий. 
Создаем приватный репозиторий с названием DevOps_online_Kherson_2021Q2

Затем в корневой директории проекта, вместо инициализации клонирую пустой репозиторий: 
```
git clone git@github.com:mjeedx/DevOps_online_Kherson_2021Q2.git
```
Дальше создаем папку, в которой будут выпоняться все манипуляции касательно данного урока и переходим в неё:
```
mkdir -p DevOps_online_Kherson_2021Q2/m1/task1.1/
cd DevOps_online_Kherson_2021Q2/m1/task1.1
```
Создаем пустой readme.txt файл:
```
touch readme.txt
```
Добавляем файл в индекс и коммитим:
```
git add .
git commit -m "init commit"
```
Создаем ветку develop и переходим в неё:

```
git branch develop
git checkout develop
```

Создаем пустой index.html и коммитим:
```
touch index.html
git add .
git commit -m "index.html was created"
```

Создаем ветку images, переходим в неё. Создадим одноименную папку и в неё скачаем несколько изображений. Коммитим:
```
git checkout -b images
mkdir images && cd images
wget https://upload.wikimedia.org/wikipedia/commons/6/6e/B-52_over_Afghanistan.JPG
wget https://upload.wikimedia.org/wikipedia/commons/4/4a/B-1B_over_the_pacific_ocean.jpg
wget https://upload.wikimedia.org/wikipedia/commons/4/47/B-2_Spirit_original.jpg
git add .
git commit -m "branch and folder with images were created"
```
В index.html создадим скелет страницы и добавим на неё изображения, коммитим:
![1](screenshots/1.jpg)
```
git add .
git commit -m "image links were added to the index.html"
```

Вернемся в develop ветку, созадим ветку styles, папку и файл со стилями, коммитим:
```
git checkout develop
git checkout -b styles
mkdir styles 
touch styles/styles.css
git add .
git commit -m "styles were created"
```

Подключаем стили в index.html файл, коммитим, возвращаемся в develop ветку.
![2](screenshots/2.jpg)
```
git add . 
git commit -m "styles added to the index.html"
git checkout develop
```
Выполняем слияние image и style веток с develop:
```
git merge images
git merge styles
```
В результате чего получили merge conflict в index.html (кто бы мог подумать!). Устраняем конфликт, коммитим, тем самым завершаем слияние веток:
* Before conflict:

![3a](screenshots/3a.jpg)
* Resolved conflict:

![3b](screenshots/3b.jpg)
```
git add .
git commit -m "resolving merge conflict"
```
Переключаемся  в master, проводим слияние с develop веткой:
```
git checkout master
git merge develop
```
Осталось навести немного красоты в стилях и сделать страницу более опрятной, после чего провести слияние с develop после тестов с master. После пушим всё в Github:
```
git push origin --all
```
Далее сохраняем лог ссылок на HEAD в файл:
```
git reflog >> task1.1_GIT.txt
```


