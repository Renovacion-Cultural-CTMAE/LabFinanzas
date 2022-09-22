json.extract! cdp_movement, :id, :identificacion_rubro, :identificacion_rubro_interno, :numero_cdp, :concepto_movimiento_cdp, :valor_movimiento_cdp, :saldo_cdp, :fecha_movimiento_cdp, :created_at, :updated_at
json.url cdp_movement_url(cdp_movement, format: :json)
