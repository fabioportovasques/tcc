<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

  <!-- Icones -->

<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-glyphicons.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />







</head>
<body>

<!--

<div class="container">
  <h3>Tooltip Example</h3>
  <p>The data-placement attribute specifies the tooltip position.</p>
  <a href="#" data-toggle="tooltip" data-placement="top" title="Hooray!">Top</a>
  <a href="#" data-toggle="tooltip" data-placement="bottom" title="Hooray!">Bottom</a>
  <a href="#" data-toggle="tooltip" data-placement="left" title="Hooray!">Left</a>
  <a href="#" data-toggle="tooltip" data-placement="right" title="Hooray!">Right</a>
</div>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

-->



 
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Matricula</th>
      <th scope="col">Nome</th>
      <th scope="col">Departamento</th>
      <th scope="col" align="center">Função</th>
      <th scope="col" align="center">Excluir Colaborador</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">151589</th>
      <td>Fábio Vasques</td>
      <td>T.I</td>
      <td>técnico em informática</td>
        <td align="center"><button class="btn btn-light" data-toggle="tooltip"     data-placement="right" title="Excluir colaborador"><i class="glyphicon glyphicon-minus"></i></button> </td>
    </tr>
    <tr>
      <th scope="row">25678</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td align="center"><button class="btn btn-light"><i class="glyphicon glyphicon-minus"  data-toggle="tooltip"  data-placement="right" title="Excluir colaborador"></i></button></td>
    </tr>
    <tr>
      <th scope="row">309858</th>
      <td colspan="2">Larry the Bird</td>
      <td></td>
      <td align="center"><button class="btn btn-light"><i class="glyphicon glyphicon-minus"   data-toggle="tooltip"  data-placement="right" title="Excluir colaborador"></i></button></td>
    </tr>
  </tbody>
</table>



</body>
</html>

