/**
 *  Name:
 *    bp_be_dcache_pkg.vh
 *  
 *  Description:
 *    opcodes for dcache packet from mmu.
 */

package bp_be_dcache_pkg;
    
  
  `include "bp_be_dcache_pkt.vh"
  `include "bp_be_dcache_lce_pkt.vh"
  `include "bp_be_dcache_tag_info.vh"
  `include "bp_be_dcache_stat_info.vh"
  `include "bp_be_dcache_wbuf_entry.vh"

  typedef enum logic [3:0] {

    e_dcache_opcode_lbu  = 4'b0100  // load byte unsigned
    ,e_dcache_opcode_lhu = 4'b0101  // load half unsigned
    ,e_dcache_opcode_lwu = 4'b0110  // load word unsigned

    ,e_dcache_opcode_lb  = 4'b0000  // load byte
    ,e_dcache_opcode_lh  = 4'b0001  // load half
    ,e_dcache_opcode_lw  = 4'b0010  // load word
    ,e_dcache_opcode_ld  = 4'b0011  // load double

    ,e_dcache_opcode_sb  = 4'b1000  // store byte
    ,e_dcache_opcode_sh  = 4'b1001  // store half
    ,e_dcache_opcode_sw  = 4'b1010  // store word
    ,e_dcache_opcode_sd  = 4'b1011  // store double

  } bp_be_dcache_opcode_e;

  //  tag_mem opcode
  //
  typedef enum logic [1:0] {

    // clear all blocks in a set for given index.
    e_dcache_lce_tag_mem_set_clear,
    
    // invalidate a block for given index and way_id.
    e_dcache_lce_tag_mem_invalidate,
    
    // set tag and coh_state for given index and way_id.
    e_dcache_lce_tag_mem_set_tag

  } bp_be_dcache_lce_tag_mem_opcode_e;


  // stat_mem opcode
  //
  typedef enum logic [1:0] {

    // clear all dirty bits and LRU bits to zero for given index.
    e_dcache_lce_stat_mem_set_clear,
    
    // read stat_info for given index.
    e_dcache_lce_stat_mem_read,
    
    // clear dirty bit for given index and way_id.
    e_dcache_lce_stat_mem_clear_dirty,
    
    // update LRU bits to point to a block with given index and way_id.
    e_dcache_lce_stat_mem_set_lru

  } bp_be_dcache_lce_stat_mem_opcode_e;

endpackage
