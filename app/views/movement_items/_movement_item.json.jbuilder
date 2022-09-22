json.extract! movement_item, :id, :identificacion_rubro, :identificacion_rubro_interno, :presupuesto_inicial, :codigo_dependencia, :valor_movimiento, :tipo_movimiento, :codigo_resolucion, :fecha_resolucion, :observacion_resolucion, :created_at, :updated_at
json.url movement_item_url(movement_item, format: :json)
