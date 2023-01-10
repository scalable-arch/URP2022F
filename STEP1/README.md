```
## Bank Finite State Machine

Current state  | output                           | transition
-----------------------------------------------------------------------------

S_IDLE         | act_gnt = req_valid & tRC_met    | S_ACTIVATING on act_gnt

               | counter_n = act_gnt ? tRCD_m2:'d0;
               
S_ACTIVATING   | counter_n = counter - 'd1;       | S_BANK_ACTIVE on counter=='d0

S_BANK_ACTIVE  | wr_gnt = (req_ra==open_ra)       | S_WRITING on wr_gnt

               |         & (req_wr==1'b1);        | S_READING on rd_gnt
               
               | rd_gnt = (req_ra==open_ra)       | S_PRECHARGING on pre_gnt
               
               |         & (req_wr==1'b0);        |
               
               | pre_gnt = ( (req_ra!=open_ra)
               
                            |(row_open_cnt=='d0)) |
                            
               |         & tRAS_met & tRTP_met    |
               
               |         & tWTR_met               |
               
               | counter_n = (wr_gnt | rd_gnt)    |
               
               |            ? BL/2-'d2            |
               
               |            : (pre_gnt) ? tRP-d'2 |
               
               |                        : 'd0     |
               
S_READING      | counter_n = counter - 'd1        | S_BANK_ACTIVE on counter=='d0

S_WRITING      | counter_n = counter - 'd1        | S_BANK_ACTIVE on counter=='d0

S_PRECHARGING  | counter_n = counter - 'd1        | S_IDLE on counter=='d0
 
            
clk        : __--__--__--__--__--__--__--__--__--__--__--__--__--__--__--__--__--__--__

req_valid  : _______----_______________________________________________________________

state      : IDLE      | ACTIVATING    |BA |RDI| BA        |  PRECHARGING  | IDLE

act_gnt    : _______----_______________________________________________________________

rd_gnt     : ___________________________----___________________________________________

pre_gnt    : _______________________________________________----_______________________

counter    :   0       | 3 | 2 | 1 |   0   | 0 |     0         | 3 | 2 | 1 | 0 |

```
