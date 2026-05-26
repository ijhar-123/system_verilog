module package_call;

//wild card import by *
initial begin: wildard_test
import constants_pkg::*;
$display("[wild card import] module compiled successfully with WIDTH=%0d and DEPTH=%0d",WIDTH,DEPTH);
end

//Legitimate Referencing Methods
initial begin:specific_import_width
import constants_pkg::WIDTH;
$display("specific import using refrencing WIDTH=%0d",WIDTH);
//$display("specific import using refrencing DEPTH=%0d",DEPTH);
end


initial begin:specific_import_depth
import constants_pkg::DEPTH;
//$display("specific import using refrencing WIDTH=%0d",WIDTH);
$display("specific import using refrencing DEPTH=%0d",DEPTH);
end

initial begin : scope_resolution_test
$display("[SCOPE RESOLUTION] WIDTH=%0d and DEPTH=%0d",constants_pkg::WIDTH, constants_pkg::DEPTH);
end

endmodule
