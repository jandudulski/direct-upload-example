# README

```mermaid
sequenceDiagram
  participant Client
  participant Backend
  participant Storage
  Client->>Backend: POST rails/active_storage/direct_uploads
  Backend->>Backend: create ActiveStorage::Blob
  Backend->>Storage: url_for_direct_upload
  Storage-->>Backend: signed url
  Backend-->>Client: json with signed url
  Client->>Storage: PUT upload to signed url
  Client->>Backend: POST entity["image"]=key
```

Know issue:

* https://github.com/rails/rails/issues/38940
* https://github.com/rails/rails/issues/43971
* https://rubyonrails.org/2022/2/11/this-week-in-rails-rails-7-0-2-schema-versioning-based-on-the-rails-version-and-more-cbcb0592
