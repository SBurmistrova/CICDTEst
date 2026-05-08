package service_test

import (
	"cicdtest/service"
	"testing"
)

func TestSum(t *testing.T) {
	result := service.Sum(1, 3)
	expected := 5
	if result != expected {
		t.Errorf("Expected: %d, got: %d", expected, result)
	}
}
