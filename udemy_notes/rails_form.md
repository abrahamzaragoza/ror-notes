[Form Options Helper](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html)
[APIDOC Collection Select](https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/collection_select)
**Collection Select**
[Stackoverflow](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html)
```
<%= f.collection_select(:category_ids, Category.all, :id, :name) %>

# multiple selection with propmt
<%= f.collection_select(:category_ids, Category.all, :id, :name,
            { prompt: "Make your selection from the list below (can be empty)"}, { multiple: true, size: 3, class: "custom-select shadow rounded" }) %>
```
