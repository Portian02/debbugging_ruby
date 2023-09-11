require "spec_helper"
require_relative '../calculator.rb'

describe "calculator" do 
    let(:calculator) {calculator.new}
    it "suma dos número positivos" do
        expect(calculator.add(2,3)).to eq(5)
    end
    it "resta dos números positivos"do
        expect(calculator.subtract(5,2)).to eq(3)
    end
    it "multiplicar dos números positivos"do
    expect(calculator.multiply(5,2)).to eq(10)
    end
    it "dividir dos números positivos"do
        expect{calculator.divide(5,0)}.to raise_error(StandardError, "No se puede dividir por cero")
    end
end