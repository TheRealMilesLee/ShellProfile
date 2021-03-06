# git commit-tree

> Низькорівнева утиліта для створення об'єктів комітів.
> Дивись також: `git commit`.
> Більше інформації: <https://git-scm.com/docs/git-commit-tree>.

- Створює об'єкт коміту із певним повідомленням:

`git commit-tree {{tree}} -m "{{повідомлення}}"`

- Створює об'єкт коміту читаючи повідомлення з файлу (використовуй `-` для читання зі стандартного введення):

`git commit-tree {{tree}} -F {{шлях/до/файлу}}`

- Створює GPG-підписаний об'єкт коміту:

`git commit-tree {{tree}} -m "{{повідомлення}}" --gpg-sign`

- Створює об'єкт коміту із певним батьківським об'єктом коміту:

`git commit-tree {{tree}} -m "{{повідомлення}}" -p {{sha_батьківського_коміту}}`
