module Layer_1 #(parameter NN = 30,numWeight=784,dataWidth=16,layerNum=1,sigmoidSize=10,weightIntWidth=4,actType="relu")
    (
    input           clk,
    input           rst,
    input           weightValid,
    input           biasValid,
    input [31:0]    weightValue,
    input [31:0]    biasValue,
    input [31:0]    config_layer_num,
    input [31:0]    config_neuron_num,
    input           x_valid,
    input [dataWidth-1:0]    x_in,
    output [NN-1:0]     o_valid,
    output [NN*dataWidth-1:0]  x_out
    );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(0),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_0.hex"),.biasFile("b_1_0.hex"))n_0(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[0*dataWidth+:dataWidth]),
        .outvalid(o_valid[0])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(1),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_1.hex"),.biasFile("b_1_1.hex"))n_1(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[1*dataWidth+:dataWidth]),
        .outvalid(o_valid[1])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(2),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_2.hex"),.biasFile("b_1_2.hex"))n_2(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[2*dataWidth+:dataWidth]),
        .outvalid(o_valid[2])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(3),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_3.hex"),.biasFile("b_1_3.hex"))n_3(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[3*dataWidth+:dataWidth]),
        .outvalid(o_valid[3])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(4),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_4.hex"),.biasFile("b_1_4.hex"))n_4(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[4*dataWidth+:dataWidth]),
        .outvalid(o_valid[4])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(5),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_5.hex"),.biasFile("b_1_5.hex"))n_5(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[5*dataWidth+:dataWidth]),
        .outvalid(o_valid[5])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(6),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_6.hex"),.biasFile("b_1_6.hex"))n_6(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[6*dataWidth+:dataWidth]),
        .outvalid(o_valid[6])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(7),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_7.hex"),.biasFile("b_1_7.hex"))n_7(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[7*dataWidth+:dataWidth]),
        .outvalid(o_valid[7])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(8),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_8.hex"),.biasFile("b_1_8.hex"))n_8(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[8*dataWidth+:dataWidth]),
        .outvalid(o_valid[8])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(9),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_9.hex"),.biasFile("b_1_9.hex"))n_9(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[9*dataWidth+:dataWidth]),
        .outvalid(o_valid[9])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(10),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_10.hex"),.biasFile("b_1_10.hex"))n_10(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[10*dataWidth+:dataWidth]),
        .outvalid(o_valid[10])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(11),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_11.hex"),.biasFile("b_1_11.hex"))n_11(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[11*dataWidth+:dataWidth]),
        .outvalid(o_valid[11])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(12),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_12.hex"),.biasFile("b_1_12.hex"))n_12(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[12*dataWidth+:dataWidth]),
        .outvalid(o_valid[12])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(13),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_13.hex"),.biasFile("b_1_13.hex"))n_13(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[13*dataWidth+:dataWidth]),
        .outvalid(o_valid[13])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(14),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_14.hex"),.biasFile("b_1_14.hex"))n_14(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[14*dataWidth+:dataWidth]),
        .outvalid(o_valid[14])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(15),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_15.hex"),.biasFile("b_1_15.hex"))n_15(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[15*dataWidth+:dataWidth]),
        .outvalid(o_valid[15])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(16),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_16.hex"),.biasFile("b_1_16.hex"))n_16(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[16*dataWidth+:dataWidth]),
        .outvalid(o_valid[16])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(17),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_17.hex"),.biasFile("b_1_17.hex"))n_17(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[17*dataWidth+:dataWidth]),
        .outvalid(o_valid[17])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(18),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_18.hex"),.biasFile("b_1_18.hex"))n_18(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[18*dataWidth+:dataWidth]),
        .outvalid(o_valid[18])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(19),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_19.hex"),.biasFile("b_1_19.hex"))n_19(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[19*dataWidth+:dataWidth]),
        .outvalid(o_valid[19])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(20),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_20.hex"),.biasFile("b_1_20.hex"))n_20(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[20*dataWidth+:dataWidth]),
        .outvalid(o_valid[20])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(21),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_21.hex"),.biasFile("b_1_21.hex"))n_21(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[21*dataWidth+:dataWidth]),
        .outvalid(o_valid[21])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(22),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_22.hex"),.biasFile("b_1_22.hex"))n_22(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[22*dataWidth+:dataWidth]),
        .outvalid(o_valid[22])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(23),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_23.hex"),.biasFile("b_1_23.hex"))n_23(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[23*dataWidth+:dataWidth]),
        .outvalid(o_valid[23])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(24),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_24.hex"),.biasFile("b_1_24.hex"))n_24(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[24*dataWidth+:dataWidth]),
        .outvalid(o_valid[24])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(25),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_25.hex"),.biasFile("b_1_25.hex"))n_25(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[25*dataWidth+:dataWidth]),
        .outvalid(o_valid[25])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(26),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_26.hex"),.biasFile("b_1_26.hex"))n_26(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[26*dataWidth+:dataWidth]),
        .outvalid(o_valid[26])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(27),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_27.hex"),.biasFile("b_1_27.hex"))n_27(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[27*dataWidth+:dataWidth]),
        .outvalid(o_valid[27])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(28),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_28.hex"),.biasFile("b_1_28.hex"))n_28(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[28*dataWidth+:dataWidth]),
        .outvalid(o_valid[28])
        );
neuron #(.numWeight(numWeight),.layerNo(layerNum),.neuronNo(29),.dataWidth(dataWidth),.sigmoidSize(sigmoidSize),.weightIntWidth(weightIntWidth),.actType(actType),.weightFile("w_1_29.hex"),.biasFile("b_1_29.hex"))n_29(
        .clk(clk),
        .rst(rst),
        .myinput(x_in),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .myinputValid(x_valid),
        .out(x_out[29*dataWidth+:dataWidth]),
        .outvalid(o_valid[29])
        );
endmodule