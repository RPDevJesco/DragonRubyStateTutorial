def tick args

  #x_position = 100
  #args.outputs.solids << [x_position, 250, 50, 50, 0, 0, 0]
  #x_position += 10
  
  

  args.state.x ||= 60
  args.state.y ||= 250
  args.state.w ||= 50
  args.state.h ||= 50
  args.state.r ||= 0
  args.state.g ||= 0
  args.state.b ||= 0
  args.state.speed ||= 10

  args.outputs.solids << [args.state.x, args.state.y, args.state.w, args.state.h,
                          args.state.r, args.state.g, args.state.b]
						  
  #args.state.x += 10
  
  #if args.state.x >= 1080
	#args.state.x = 60
  #end
  #args.state.x += 10
  args.state.x = lerp(0, 1200,
                      (Math.sin(args.state.speed *
                                    args.state.tick_count / 200) + 1) / 2)
end

def lerp(start, stop, step)
  (1.0 - step) * start + step * stop
end
