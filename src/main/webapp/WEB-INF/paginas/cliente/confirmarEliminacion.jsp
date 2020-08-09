<!-- Modal de eliminación -->
<div class="modal fade" id="eliminarClienteModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tituloModal">Eliminar Cliente</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!-- Se concatena el ID al acción  mediante JQuery, tomando el id que viene del link a la modal.                 
            -->
            <form class="formEliminar" action="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=" 
                  method="post">    
                <div class="modal-body">                  
                    ¿Está seguro de que desea eliminar el registro?
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>                    
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Este JQuery toma el id indicado en el link a la modal, y modifica el atributo action del form
     concatenando dicho id (que es el del cliente a eliminar) -->
<script type="text/javascript">
    $(function () {
        $(".botonEliminar").click(function () {
            var id = $(this).data('id');            
            var cadenaAction = $(".formEliminar").attr("action");            
            var aux = cadenaAction.search("idCliente=");
            
            cadenaAction = cadenaAction.slice(0, aux + "idCliente=".length ) + id;

            $(".formEliminar").attr("action", cadenaAction);                          
        });
    });
</script>