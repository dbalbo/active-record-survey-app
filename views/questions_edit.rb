<h1>Update <%= @question.name() %></h1>

<form action='/questions/<%= @question.id() %>' method="post">
  <input name="_method" type="hidden" value="patch">
  <label for="name">Update or add to your question:</label>
  <input id="name" name="name" type="text"


<button type="submit">Update</button>
</form> 
