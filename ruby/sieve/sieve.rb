# frozen_string_literal: true

# implementation of Sieve of Eratosthenes algorithm
class Sieve
  attr_reader :primes

  def initialize(number)
    @primes = []
    calculate_primes([*2..number])
  end

  def calculate_primes(primes_list)
    return if primes_list.empty?

    @primes << primes_list.first
    calculate_primes(primes_list.slice(1..-1).reject { |num| (num % primes_list.first).zero? })
  end
end
