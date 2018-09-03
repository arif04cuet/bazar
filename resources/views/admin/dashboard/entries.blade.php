<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">Last {{count($items)}} Entries</h3>

        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>

    <!-- /.box-header -->
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-striped">
                <tr>
                    <th>Date</th>
                    <th>Product</th>
                    <th>Total Spent</th>
                </tr>
                @foreach($items as $item)
                    <tr>
                        <td>{{ $item->entry_date }}</td>
                        <td>
                        <?php 
                            echo implode(',',array_map(function($val){
                                return UtilsHelper::get_product($val['product_id'])->title;
                            },$item->items->toArray()));
                        ?>
                        
                    </td>
                        <td>{{ collect($item->items)->sum('total')}}</td>
                        
                    </tr>
                @endforeach

            </table>
        </div>
        <!-- /.table-responsive -->
    </div>
    <!-- /.box-body -->
</div>