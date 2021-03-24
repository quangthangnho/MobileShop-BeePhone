<%@ page pageEncoding="utf-8"%>


<div class="panel panel-danger">
	<div class="panel-heading">
		<div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-sm-4 text-center">
				<label for="image_file"> <img id="image" src="">
				</label>
				<div class="form-group">
					<input onchange="upload.change(this, 'img#image')"
						name="image_file" id="image_file" type="file" class="form-control">
				</div>
			</div>
			<div class="col-sm-8">
				<div class="row">
					<div class="form-group col-sm-6">
						<label>TIÊU ĐỀ</label> <input path="id" class="form-control"
							readonly="true" />
						<!-- id tự tăng nên để readonly -->
					</div>
					<div class="form-group col-sm-6">
						<label>NGÀY ĐĂNG</label> <input path="name" class="form-control" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-sm-6">
						<label>NGƯỜI ĐĂNG</label> <input path="name" class="form-control" />
					</div>

					<div class="form-group col-sm-6">
						<label>NỘI DUNG</label> <input path="name" class="form-control" />
					</div>

				</div>
			</div>

		</div>

	</div>
	<div class="panel-footer">
		<button formaction="" class="btn btn-success" title="Create"
			disabled="">
			<i class="fa fa-plus-circle"></i> Create
		</button>
		<button formaction="" class="btn btn-primary" title="Update"
			disabled="">
			<i class="fa fa-check-circle"></i> Update
		</button>
		<button formaction="" class="btn btn-danger" title="Delete"
			disabled="">
			<i class="fa fa-trash-o"></i> Delete
			<button>
				<a href="" class="btn btn-info" title="Reset"> <i
					class="fa fa-refresh"></i> Reset
				</a>
	</div>
</div>
