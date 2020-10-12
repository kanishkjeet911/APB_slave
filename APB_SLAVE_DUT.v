module apb_slave_DUT;

 reg           PCLK;
 reg           Presetn;
 reg  [3:0]    Paddr;
 reg           Psel;
 reg           Penable;
 reg           Pwrite;
 reg  [31:0]   Pwdata;
 wire          Pready;
 wire   [31:0] Prdata ;

abp_slave DUT( PCLK,Presetn,Paddr,Psel,Penable,Pwrite,Pwdata,Pready, Prdata );

initial 
begin
    PCLK =0;
    Paddr =0;
    Pwdata =0;
    Presetn =1;
    #5 Presetn =0;
    #3 Presetn =1;
    #200 $finish ;
end

always #1 PCLK = ~PCLK ;


initial 
begin
Psel =0;
Pwrite =0;
Penable =1;
#10 Psel = 1;
Pwrite =1;
#32 Pwrite =0;
Psel =0;
#10 Pwrite =0;
Psel =1;
#32 Penable =0 ;
end

////// For Writing /////

always @ (posedge PCLK)
begin
     if (Psel && Pwrite && Penable && Pready)
         begin
              Paddr <= Paddr +1 ;
              Pwdata <= Pwdata +1 ;
         end

end

//////// For Reading /////////////

always @ (posedge PCLK)
begin
if (Psel && (!Pwrite) && Penable && Pready )
    Paddr <= Paddr +1 ;
end
    
endmodule
