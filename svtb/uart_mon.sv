module uart_mon (
input clk,
input       valid_1,
input       valid_2,
input [7:0] data
);

logic [7:0] data_4byte[4];
  
initial begin
	data_4byte[0] = 0; 
	data_4byte[1] = 0; 
	data_4byte[2] = 0; 
	data_4byte[3] = 0; 
	forever 
	begin 
			@(posedge clk);
			if ( valid_1 && valid_2)
			begin
				data_4byte[0] <= data_4byte[1];
				data_4byte[1] <= data_4byte[2];
				data_4byte[2] <= data_4byte[3];
				data_4byte[3] <= data;
			end
			
			if (   {data_4byte[0],data_4byte[1],data_4byte[2],data_4byte[3]}  == "PASS" )
			begin
					$display("\nPASS Detected on UART.\n");
					$finish();	
			end
			else if ({data_4byte[0],data_4byte[1],data_4byte[2],data_4byte[3]}  == "FAIL")	
			begin
					$display("\nFAIL Detected on UART.\n");
					$finish();	
			end
			else ;				
	end
end

                    
endmodule  
