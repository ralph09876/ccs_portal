<?php include('header.php') ?>
<div class="col-lg-12">
	<div class="card-body">
		<table class="table tabe-hover table-bordered" id="list">
			<thead>
				<tr>
					<th class="text-center">#</th>
					<th>school ID</th>
					<th>Full name</th>
					<th>Lender</th>
					<th>Remarks</th>
					<th>Serial number</th>
					<th>Date borrowed</th>
					<th>Date Returned</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$i = 1;
				$type = array('', "Admin", "Project Manager", "Employee");
				$qry = $conn->query("SELECT * FROM borrower WHERE returndate IS NOT NULL");
				while ($row = $qry->fetch_assoc()):
					$id = $row['id'];
					?>
					<tr>
						<th class="text-center">
							<?php echo $i++ ?>
						</th>
						<td><b>
								<?php echo $row['scholid'] ?>
							</b></td>
						<td><b>
								<?php echo $row['firstname'] ?>
							</b></td>
						<td><b>
								<?php echo $row['lastname'] ?>
							</b></td>
						<td><b>
								<?php echo $row['remark'] ?>
							</b></td>
						<td><b>
								<?php echo $row['itemname'] ?>
							</b></td>
						<td><b>
								<?php echo $row['dateborrower'] ?>
							</b></td>
						<td>
                        <b>
								<?php echo $row['returndate'] ?>
							</b>
						</td>
						<td>
							<a href="index.php?page=inventoryview&id=<?php echo $id?>" class="btn btn-primary mr-2">View</a>
						</td>
					</tr>
				<?php endwhile; ?>
			</tbody>
		</table>
	</div>
</div>
