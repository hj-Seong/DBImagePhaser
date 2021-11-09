# ImageThumbnailTest
- summernote로 저장한 데이터에서 첫번째 img의 src만 파싱해서 들고온다.

### 개발환경
- Springboot
- JPA
- MariaDB
- JSP TemplateEngine

### DB연결 방법
```sql
create user 'green'@'%' identified by 'green1234';
GRANT ALL PRIVILEGES ON *.* TO 'green'@'%';
create database greendb;
```