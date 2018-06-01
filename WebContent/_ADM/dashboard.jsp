		<div class="container theme-showcase" role="main">
			<div class="page-header">
				<h1>Lista de Mensagem Contatos</h1>
			</div>
			<div class="dropdown">
				<span class="glyphicon glyphicon-cog btn-lg text-success" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></span>
				</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
					<li><a href="form_contato.php">Cadastrar</a></li>
					<li><a href="gerar_planilha.php">Gerar Relatório Excel</a></li>
					<li><a href="#">Gerar Relatório PDF</a></li>
				</ul>
			</div>
			<div class="row espaco">
				<div class="pull-right">					
					<a href="form_contato.php"><button type='button' class='btn btn-sm btn-success'>Cadastrar</button></a>
					<a href="gerar_planilha.php"><button type='button' class='btn btn-sm btn-success'>Gerar Excel</button></a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">Id</th>
								<th class="text-center">Nome</th>
								<th class="text-center">E-mail</th>
								<th class="text-center">Assunto</th>
								<th class="text-center">Inserido</th>
								<th class="text-center">Ação</th>
							</tr>
						</thead>
						<tbody>
							<?php while($row_msg_contatos = mysqli_fetch_assoc($resultado_msg_contatos)){?>
								<tr>
									<td class="text-center"><?php echo $row_msg_contatos["id"]; ?></td>
									<td class="text-center"><?php echo $row_msg_contatos["nome"]; ?></td>
									<td class="text-center"><?php echo $row_msg_contatos["email"]; ?></td>
									<td class="text-center"><?php echo $row_msg_contatos["assunto"]; ?></td>
									<td class="text-center"><?php echo date('d/m/Y H:i:s',strtotime($row_msg_contatos["created"])); ?></td>
									<td class="text-center">								
										<a href="#">
											<span class="glyphicon glyphicon-eye-open text-primary" aria-hidden="true"></span>
										</a>
										<a href="#">
											<span class="glyphicon glyphicon-pencil text-warning" aria-hidden="true"></span>
										</a>
										<a href="#">
											<span class="glyphicon glyphicon-remove text-danger" aria-hidden="true"></span>
										</a>
									</td>
								</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
			</div>
			
			<?php
				//Verificar pagina anterior e posterior
				$pagina_anterior = $pagina - 1;
				$pagina_posterior = $pagina + 1;
			?>
			<nav class="text-center">
				<ul class="pagination">
					<li>
						<?php 
							if($pagina_anterior != 0){
								?><a href="administrativo.php?link=50&pagina=<?php echo $pagina_anterior; ?>" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a><?php
							}else{
								?><span aria-hidden="true">&laquo;</span><?php
							}
						?>
					</li>
					<?php
						//Apresentar a paginação
						for($i = 1; $i < $num_pagina + 1; $i++){
							?>
								<li><a href="administrativo.php?link=50&pagina=<?php echo $i; ?>">
									<?php echo $i; ?>
								</a></li>
							<?php
						}
					?>
					<li>
						<?php 
							if($pagina_posterior <= $num_pagina){
								?><a href="administrativo.php?link=50&pagina=<?php echo $pagina_posterior; ?>" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a><?php
							}else{
								?><span aria-hidden="true">&raquo;</span><?php
							}
						?>
					</li>
				</ul>
			</nav>
		</div>
  