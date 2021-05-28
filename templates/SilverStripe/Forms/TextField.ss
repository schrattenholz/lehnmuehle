<input id="$id"  name="$name"
  <% if $required %>required="required"<% end_if %>
  <% if $getAttribute('readonly')=="readonly" %>readonly="readonly"<% end_if %>
  <% if $getAttribute('oninput') %>oninput="$getAttribute('oninput')" <% end_if %>
  <% if $getAttribute('pattern') %>pattern="$getAttribute('pattern')" <% end_if %>
  <% if $getAttribute('placeholder') %>placeholder="$getAttribute('placeholder')" <% end_if %>
  <% if $getAttribute('minlength') %>minlength="$getAttribute('minlength')" <% end_if %>
  <% if $getAttribute('maxlength') %>maxlength="$getAttribute('maxlength')" <% end_if %>
    
  class="form-control" type="$getAttribute('type')" value="$value"/>