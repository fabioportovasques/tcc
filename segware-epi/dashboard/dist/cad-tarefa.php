<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ADD Tarefas</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


     <script>
        $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>   

   


    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="#">SEGWARE EPI</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            </form>

    <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                      
                       <!--icones -->
                        <a class="dropdown-item" href="#">
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                </svg>
                       &nbsp Trocar Usuário</a>

                        <a class="dropdown-item"   href="/tcc/segware-epi/sobre.php">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bell-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                        </svg>
                       &nbsp Sobre</a>

                        <a class="dropdown-item" href="#">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-octagon-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353L11.46.146zM6.57 6.033H5.25C5.22 4.147 6.68 3.5 8.006 3.5c1.397 0 2.673.73 2.673 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.355H7.117l-.007-.463c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.901 0-1.358.603-1.358 1.384zm1.251 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927z"/>
                        </svg>
                        &nbsp Ajuda</a>

                        
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="http://localhost/tcc/segware-epi/index.php">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-in-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                              <path fill-rule="evenodd" d="M8.146 11.354a.5.5 0 0 1 0-.708L10.793 8 8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z"/>
                              <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 1 8z"/>
                              <path fill-rule="evenodd" d="M13.5 14.5A1.5 1.5 0 0 0 15 13V3a1.5 1.5 0 0 0-1.5-1.5h-8A1.5 1.5 0 0 0 4 3v1.5a.5.5 0 0 0 1 0V3a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v10a.5.5 0 0 1-.5.5h-8A.5.5 0 0 1 5 13v-1.5a.5.5 0 0 0-1 0V13a1.5 1.5 0 0 0 1.5 1.5h8z"/>
                        </svg>
                    &nbsp Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"></div>
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-text-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                         <path fill-rule="evenodd" d="M12 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2zM5 4a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm-.5 2.5A.5.5 0 0 1 5 6h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5zM5 8a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1H5z"/>
                                </svg>&nbsp&nbsp&nbsp CADASTROS 
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="cad-func.php">Cadastro Funcionarios</a>
                                    <a class="nav-link" href="cad-dep.php">Cadastro Departamentos</a>
                                    <a class="nav-link" href="cad-encarregado.php">Cadastro  Encarregados</a>
                                    <a class="nav-link" href="cad-fabricante.php">Cadastro  Fabricante</a>
                                    <a class="nav-link" href="cad-fornecedor.php">Cadastro  Fornecedores</a>
                                   <a class="nav-link" href="cad-motivo.php">Cadastro  Motivo</a>
                                    <a class="nav-link" href="cad-tst.php">Cadastro  TST</a>
                                    <a class="nav-link" href="cad-epi.php">Cadastro  E.P.IS</a>
                                </nav>
                            </div>


                           
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"></div>

                                <!--icone-->
                                 <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
                                      <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                                </svg>&nbsp&nbsp&nbsp CONSULTAS  
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>



                           
                          
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="cons-func.php">
                                        Funcionário 
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                     <a class="nav-link collapsed" href="cons-dep.php">
                                        Departamento 
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                     <a class="nav-link collapsed" href="cons-encarregado.php">
                                        Encarregado
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    
                                     <a class="nav-link collapsed" href="cons-fornecedor.php">
                                        Fornecedor
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <a class="nav-link collapsed" href="cons-fabricante.php">
                                        Fabricante
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <a class="nav-link collapsed" href="cons-motivo.php">
                                        Motivo
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <a class="nav-link collapsed" href="cons-tst.php">
                                        TST
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <a class="nav-link collapsed" href="cons-epi.php">
                                        E.P.I
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>

                                </nav>
                            </div>

                                  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTarefas" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"></div>

                                        <!--icone-->
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar2-event-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" d="M14 2H2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1zM2 1a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2z"/>
                                              <path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1a.5.5 0 0 1-1 0V.5a.5.5 0 0 1 .5-.5zm9 0a.5.5 0 0 1 .5.5V1a.5.5 0 0 1-1 0V.5a.5.5 0 0 1 .5-.5z"/>
                                              <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                              <rect width="2" height="2" x="11" y="7" rx=".5"/>
                                        </svg>&nbsp&nbsp&nbsp TAREFAS
                                       
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                  </a>
                                 <div class="collapse" id="collapseTarefas" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="cad-tarefa.php">Cadastrar Tarefas</a>
                                            <a class="nav-link" href="cons-tarefa.php">Editar Tarefa</a>
                                            <a class="nav-link" href="cons-status-tarefa.php">Consultar  Tarefa</a>
                                           
                                        </nav>
                                </div>
                                   
                                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFichaEpi" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"></div>

                                        <!--icone -->

                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-card-checklist" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
                                              <path fill-rule="evenodd" d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
                                        </svg>&nbsp&nbsp&nbsp FICHA DE EPI
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                  </a>


                            <div class="collapse" id="collapseFichaEpi" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ficha-epi.php">Ficha E.P.I</a>
                                </nav>
                            </div>   

                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRelatorio" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"></div>

                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-clipboard-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                      <path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
                                                      <path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zM8 7a.5.5 0 0 1 .5.5V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5A.5.5 0 0 1 8 7z"/>
                                        </svg>&nbsp&nbsp&nbsp RELATÓRIO
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                  </a>
                            <div class="collapse" id="collapseRelatorio" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="cad-func.php">Funcionários</a>
                                     <a class="nav-link" href="cad-func.php">E.P.I</a>
                                </nav>
                            </div>   

                            
                    
                </nav>
        </div>
            <!--conteudo do meio -->

           
   <!--Início container--> <div class="container marcador-container1">

                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            

                                           <h2 class="text-center">Adicionar Tarefas</h2><br />
                <!--Início da linha-->     <div class="row">

                                <!--Início da coluna-->          <div class="marcador1 col-md-4">
                                                                       
                                                                            <form action=""  method="POST" name="cad-func" > 

                                                                                <div class="form-group">
                                                                                    <div class="   col">
                                                                                        <label > Matric Encarregado</label>
                                                                                           <span class="campo-obrigatorio">*</span>
                                                                                         <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                                                            <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
                                                                                            <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                                                                                        </svg>
                                                                                        <input type="number" name="matricula-func" id="matricula-func" class="form-control "  required="" data-toggle="tooltip" data-placement="top" title="Insira a Matricula do Encarregado">    
                                                                                    </div>
                                                                                </div>

                                 <!--Fim da coluna-->            </div>

                                 <!--Início da coluna-->         <div class="marcado1r col-md-4">
                                                                        
                                                                                <div class="form-group">
                                                                                    <div class="col">
                                                                                        <label > Responsável Tarefa</label>
                                                                                          <span class="campo-obrigatorio">*</span>
                                                                                        <input type="text" name="nome-tarefa" id="nome-func" class="form-control" placeholder="Responsável Pela Tarefa" autocomplete="off" required="" >    

                                                                                    </div>
                                                                                </div>


                                <!--Fim da coluna-->             </div>
                                                                    

                                <!--Início da coluna-->          <div class="marcador1 col-md-4">
                                                                        

                                                                              <div class="form-group">
                                                                                    <div class="col">
                                                                                        <label > Nome da Tarefa</label>
                                                                                        <span class="campo-obrigatorio">*</span>
                                                                                        <input type="text" name="nome-tarefa" id="nome-tarefa" class="form-control" placeholder="Nome da  Tarefa"  autocomplete="off" required="" >    
                                                                                    </div>
                                                                                </div>





                                <!--Fim da coluna-->             </div>


                <!--Fechamento da linha-->  </div>



                 <!--Início da linha-->      <div class="row">
                                                   

                                        <!--Início da coluna-->     <div class="col-md-4">

                                                                            <div class="form-group">
                                                                                    <div class="col">
                                                                                        <label > Número executantes</label>
                                                                                        <span class="campo-obrigatorio">*</span>
                                                                                        <input type="number" name="numero-executante" id="numero-executante" class="form-control " placeholder="Número de executantes" autocomplete="off" required="" data-toggle="tooltip" data-placement="right" title="Quantas Pessoas Executarão a Tarefa">    
                                                                                    </div>
                                                                            </div>

                                         <!--Fim da coluna-->       </div>

                                         <!--Início da coluna-->    <div class="col-md-4">

                                                                            <div class="form-group">
                                                                                 <div class="col">
                                                                                        <label >Local de Execução</label>
                                                                                        <span class="campo-obrigatorio">*</span>
                                                                                        <input type="text" name="local-tarefa" id="local-tarefa" class="form-control" placeholder="Local Tarefa"  autocomplete="off" required="" >    
                                                                                 </div>   
                                                                            </div>

                                        <!--Fim da coluna-->        </div>


                                          <!--Início da coluna-->    <div class="col-md-4">


                                                                                <div class="form-group">
                                                                                            <div class="col">
                                                                                                <label > Descrição da Tarefa</label>
                                                                                                <span class="campo-obrigatorio">*</span>
                                                                                                <textarea col="2" class="form-control" name="desc-tarefa" id="desc-tarefa" required="" placeholder="ex: Equipe Necessita subir no predio da área (B) para trocar lampadas"></textarea>
                                                                                            </div>
                                                                                </div>

                                            
                                        <!--Fim da coluna-->        </div>
                                                                            

                <!--Fechamento da linha-->  </div>



                       <!--Início da linha-->      <div class="row">
                                                   

                                        <!--Início da coluna-->     <div class="marcador1 col-sm-6">

                                                                             <div class="form-group">
                                                                                    <div class="   col">
                                                                                        <label >Data de Início</label>
                                                                                        <input type="date" name="data-inicio-tarefa" id="data-inicio-tarefa" class="form-control " required="" autocomplete="off" >    
                                                                                    </div>
                                                                                </div>

                                         <!--Fim da coluna-->       </div>

                                         <!--Início da coluna-->    <div class="marcador1 col-sm-6">

                                                                              <div class="form-group">
                                                                                     <div class="   col">
                                                                                        <label >Data Final</label>
                                                                                        <input type="date" name="data-inicio-tarefa" id="data-inicio-tarefa" class="form-control " required="" autocomplete="off" >    
                                                                                    </div>
                                                                                </div>

                                        <!--Fim da coluna-->        </div>


                                          
                                                                            

                <!--Fechamento da linha-->  </div>




                 <!--Início da linha-->      <div class="row">
                                                   

                                        <!--Início da coluna-->     <div class="marcador1 col-sm-6">

                                                                             <div class="form-group">
                                                                                    <div class="   col">
                                                                                        <label >Hora de Início</label>
                                                                                        <input type="time" name="hora-inicio-tarefa" id="hora-inicio-tarefa" class="form-control " required="" autocomplete="off" >    
                                                                                    </div>
                                                                                </div>

                                         <!--Fim da coluna-->       </div>

                                         <!--Início da coluna-->    <div class="marcador1 col-sm-6">

                                                                              <div class="form-group">
                                                                                     <div class="   col">
                                                                                        <label >Hora Final</label>
                                                                                        <input type="time" name="hora-final-tarefa" id="hora-final-tarefa" class="form-control " required="" autocomplete="off" >    
                                                                                    </div>
                                                                                </div>

                                        <!--Fim da coluna-->        </div>

                                                                            

                <!--Fechamento da linha-->  </div>


                  <!--Início da linha-->      <div class="row">
                                                   

                                        <!--Início da coluna-->     <div class="marcador1 col-sm-4">

                                                                             <div class="form-group">
                                                                                    <div class="col">
                                                                                        <label>ADD </label>
                                                                                        <span class="campo-obrigatorio">*</span>
                                                                                             <input type="text" name="matricula-func" id="matricula-func" class="form-control "  required="" data-toggle="tooltip" data-placement="top" title="Insira a Matricula do colaborador">

                                                                                    </div>
                                                                             </div>

                                         <!--Fim da coluna-->       </div>

                                         

                                           <!--Início da coluna-->         <div class="col-sm-2">
                                                                                   <div class="item6">
                                                                                      <a class="btn  btn-light  glyphicon glyphicon-plus" href="#" data-toggle="tooltip"  title="Add Colaborador" target="_blank"><i class="glyphicon glyphicon-add"></i></a>                                                       
                                                                                    </div>
                                        <!--Fim da coluna-->                </div>


                                          <!--Início da coluna-->    <div class="marcador1 col-sm-6">

                                                                                            <div class="col">
                                                                                                <label for="cidade">Status</label>
                                                                                                
                                                                                                    <input type="text"  class="form-control" name="status-tarefa" id="status-tarefa"  disabled="" placeholder="Em Análise" >   
                                                                                            </div>
                                                                                
                                            
                                        <!--Fim da coluna-->        </div>
                                                                            

                <!--Fechamento da linha-->  </div>  

                <div class="row">

                <div class="col-md-12">

                            <?php 
                                include('tabela-grid.php');

                            ?>

                    </div>
                </div>

                <br />

                <!--Início da linha-->      <div class="row">
                                                   

                                <!--Início da coluna-->     <div class="bot1 col-md-2">
                                                                        <button class="btn btn-success btn-block" type="submit">Cadastrar Tarefa</button>
                                 <!--Fim da coluna-->       </div>


                                 <!--Início da coluna-->     <div class="bot1 col-md-2">
                                                                        <input class="btn btn-success container btn-block" type="reset" name="password"  value="Limpar">
                                <!--Fim da coluna-->      </div>                                

                <!--Fechamento da linha-->  </div>










   <!--Fechamento container--> </div>           






        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>
