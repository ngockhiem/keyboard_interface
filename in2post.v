module in2post(
  clk,
  rst_n,
  clr,
  in, 
  rd
  wr,
  out
  );
input clk;
input rst_n;
input clr;
input [32:0]

output rd;
output wr;
output [32:0] out;

always@(posedge clk or negedge rst_n)
  if(!rst_n)
    state <= 0;
  else if (clr)
    state <= 0;
  else
    state <= state_nx;
    
always@*
  begin
    pop = 0;
    push = 0;
    wr = 0;
    rd =0;
    out = stack_out;
    state_nx = state;
    case (state)
    0:
      begin
      rd = buf_not_empty;
      if (buf_not_empty)
        state_nx = 1;
      else 
        state_nx = 0;
      end
    1:
      if (in[32] == 0)//=operand
        begin
          push=1;
          out = in;
        end
      else if (in == CONG_TRU && stack_out == NHAN_CHIA)
        begin
          pop = 1;
          wr = 1;
          //out = stack_out;
        end
      else if (in == CONG_TRU && stack_out == CONG_TRU)||(in == NHAN_CHIA && stack_out == NHAN_CHIA)
        begin
          push = 1;
          pop = 1;
          wr = 1;
          state_nx = 0;
          //out = stack_out;
        end
      //else if ((in == NHAN_CHIA && stack_out == CONG_TRU)|| in == MO_NGOAC || stack_empty)
      //  begin
      //    push = 1;
      //  end 
      else if (in == DONG_NGOAC)
        begin
          if (stack_out == MO_NGOAC) state_nx = 0;
          else 
            begin
              wr = 1;
              //out = stack_out;
            end
          pop = 1;
        end
      else if (in == STOP && stack_empty)
        state_nx = 2;
      else if (in == STOP)
        begin
          pop = 1;
          wr = 1;
          //out = stack_out;
        end
      else 
        push = 1;
  end
