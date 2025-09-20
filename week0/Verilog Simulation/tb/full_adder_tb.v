module full_adder_tb();
		
   //Testbench global variables
   reg   a,b,cin;
   wire  sum,carry;

   //Variable for loop iteration 
   integer i;

   //Step1 : Instantiate the full adder with order based port mapping
   full_adder dut(.a_in(a),.b_in(b),.c_in(cin),.sum_out(sum),.carry_out(carry));
   //Process to initialize the variables at 0ns

	 initial begin
			$dumpfile("full_adder.vcd"); //A Waveform file
			$dumpvars(0,full_adder_tb);//Waveform should come from Tb
	 end

   initial 
      begin
         a   = 1'b0;
	       b   = 1'b0;
			   cin = 1'b0;
      end
				
   //Process to generate stimulus using for loop
   initial
      begin 
	 for (i=0;i<8;i=i+1)
	    begin
	       {a,b,cin}=i;
	       #10;
	    end
   end
				
   //Process to monitor the changes in the variables
   initial 
      $monitor("Input a=%b, b=%b, c=%b, Output sum =%b, carry=%b",a,b,cin,sum,carry);
									
   //Process to terminate simulation after 100ns
   initial #80 $finish;
			
   
endmodule
