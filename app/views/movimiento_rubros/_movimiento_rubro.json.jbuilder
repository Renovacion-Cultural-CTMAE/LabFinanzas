json.extract! movimiento_rubro, :id, :identificacion_rubro, :identificacion_rubro_interno, :presupuesto_inicial, :codigo_dependencia, :valor_movimiento, :tipo_movimiento, :codigo_resolucion, :fecha_resolucion, :observacion_resolucion, :created_at, :updated_at
json.url movimiento_rubro_url(movimiento_rubro, format: :json)
