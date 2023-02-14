module swap_with_temporary_tb;
  
  // Inputs
  reg a, b;
  
  // Outputs
  wire swapped_a, swapped_b;
  
  // Instantiate the module
  swap_with_temporary uut(a, b, swapped_a, swapped_b);
  
  initial begin
    // Test case 1: a=1, b=0
    a = 1;
    b = 0;
    #10; // Wait for 10 time units
    if (swapped_a !== b || swapped_b !== a) begin
      $error("Test case 1 failed");
    end
    
    // Test case 2: a=0, b=1
    a = 0;
    b = 1;
    #10; // Wait for 10 time units
    if (swapped_a !== b || swapped_b !== a) begin
      $error("Test case 2 failed");
    end
    
    // Test case 3: a=1, b=1
    a = 1;
    b = 1;
    #10; // Wait for 10 time units
    if (swapped_a !== b || swapped_b !== a) begin
      $error("Test case 3 failed");
    end
    
    // Test case 4: a=0, b=0
    a = 0;
    b = 0;
    #10; // Wait for 10 time units
    if (swapped_a !== b || swapped_b !== a) begin
      $error("Test case 4 failed");
    end
    
    $display("All test cases passed");
    $finish; // Terminate simulation
  end
  
endmodule
