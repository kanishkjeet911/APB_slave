module abp_slave
(
 input          PCLK,
 input          Presetn,
 input [3:0]    Paddr,
 input          Psel,
 input          Penable,
 input          Pwrite,
 input [31:0]   Pwdata,
 output         Pready,
 output reg [31:0] Prdata 
);
reg [31:0]memory[15:0];

////////////////////////////
////////Write Logic////////
//////////////////////////



/**************************************************************/
always @ (posedge PCLK , negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[0] <= 32'b0 ;
     
       else
           begin
                if (Paddr ==4'b0 && Penable && Pwrite && Psel)
                   memory [0] <= Pwdata;
                else
                    memory [0] <= memory[0]; ///does nothing
           end
  end

/**************************************************************/


/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[1] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0001 && Penable && Pwrite && Psel)
                   memory [1] <= Pwdata;
                else
                    memory [1] <= memory[1]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[2] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0010 && Penable && Pwrite && Psel)
                   memory [2] <= Pwdata;
                else
                    memory [2] <= memory[2]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[3] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0011 && Penable && Pwrite && Psel)
                   memory [3] <= Pwdata;
                else
                    memory [3] <= memory[1]; ///does nothing
           end
  end

/**************************************************************/


/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[4] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0100 && Penable && Pwrite && Psel)
                   memory [4] <= Pwdata;
                else
                    memory [4] <= memory[4]; ///does nothing
           end
  end

/**************************************************************/


/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[5] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0101 && Penable && Pwrite && Psel)
                   memory [5] <= Pwdata;
                else
                    memory [5] <= memory[5]; ///does nothing
           end
  end

/**************************************************************/



/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[6] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0110 && Penable && Pwrite && Psel)
                   memory [6] <= Pwdata;
                else
                    memory [6] <= memory[6]; ///does nothing
           end
  end

/**************************************************************/



/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[7] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b0111 && Penable && Pwrite && Psel)
                   memory [7] <= Pwdata;
                else
                    memory [7] <= memory[7]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[8] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1000 && Penable && Pwrite && Psel)
                   memory [8] <= Pwdata;
                else
                    memory [8] <= memory[8]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[9] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1001 && Penable && Pwrite && Psel)
                   memory [9] <= Pwdata;
                else
                    memory [9] <= memory[9]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[10] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1010 && Penable && Pwrite && Psel)
                   memory [10] <= Pwdata;
                else
                    memory [10] <= memory[10]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[11] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1011 && Penable && Pwrite && Psel)
                   memory [11] <= Pwdata;
                else
                    memory [11] <= memory[11]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[12] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1100 && Penable && Pwrite && Psel)
                   memory [12] <= Pwdata;
                else
                    memory [12] <= memory[12]; ///does nothing
           end
  end

/**************************************************************/


/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[13] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1101 && Penable && Pwrite && Psel)
                   memory [13] <= Pwdata;
                else
                    memory [13] <= memory[13]; ///does nothing
           end
  end

/**************************************************************/



/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[14] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1110 && Penable && Pwrite && Psel)
                   memory [14] <= Pwdata;
                else
                    memory [14] <= memory[14]; ///does nothing
           end
  end

/**************************************************************/

/**************************************************************/
always @ (posedge PCLK or negedge Presetn) //Synchronous reset
  begin
       if(!Presetn)
         memory[15] <= 32'b0 ;
     
       else
           begin
                if (Paddr == 4'b1111 && Penable && Pwrite && Psel)
                   memory [15] <= Pwdata;
                else
                    memory [15] <= memory[15]; ///does nothing
           end
  end

/**************************************************************/


//////////////////////////////////////////////////////////////////
//////////////////  READ LOGIC  /////////////////////////////////
////////////////////////////////////////////////////////////////

always @ (posedge PCLK)
  begin
  if(!Presetn)
     Prdata <= 0;
  else
     begin
          if(Penable && (!Pwrite) && Psel)
             begin 
                  case (Paddr)
                  4'b0000 :Prdata <= memory [0];
                  4'b0001 :Prdata <= memory [1];
                  4'b0010 :Prdata <= memory [2];
                  4'b0011 :Prdata <= memory [3]; 
                  4'b0100 :Prdata <= memory [4];
                  4'b0101 :Prdata <= memory [5];
                  4'b0110 :Prdata <= memory [6];                  
                  4'b0111 :Prdata <= memory [7];
                  4'b1000 :Prdata <= memory [8];
                  4'b1001 :Prdata <= memory [9];
                  4'b1010 :Prdata <= memory [10];
                  4'b1011 :Prdata <= memory [11]; 
                  4'b1100 :Prdata <= memory [12];
                  4'b1101 :Prdata <= memory [13];
                  4'b1110 :Prdata <= memory [14];                  
                  4'b1111 :Prdata <= memory [15];
                  default : Prdata <= 32'b0;
                  endcase
             end 
          
            else
                Prdata <= 32'b0;
        end
     end

assign Pready = Penable & Psel;


   
  endmodule
