this was my parameters for moore state maching in loopback fifo.
Before the design review.
This is no longer in use. just here for reference
% state 0 = Idle , 1 = Loop read, 2 = gbe read, 4 = holdoff point.

nsm = [ 0 0 0 0 2 2 2 2 1 1 1 1 1 1 1 1; 1 1 3 3 1 1 3 3 1 1 3 3 1 1 3 3; 2 2 3 3 2 2 3 3 2 2 3 3 2 2 3 3; 3 0 3 0 3 0 3 0 3 0 3 0 3 0 3 0];


outarr = [4; 2; 1; 0;];


