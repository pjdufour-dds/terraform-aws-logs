package test

/*
import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
)

func TestTerraformAwsLogsCombined(t *testing.T) {
	// Note: do not run this test in t.Parallel() mode.

	tempTestFolder := test_structure.CopyTerraformFolderToTemp(t, "../", "examples/combined")
	testName := fmt.Sprintf("terratest-aws-logs-%s", strings.ToLower(random.UniqueId()))
	// AWS only supports one configuration recorder per region.
	// Each test using aws-config will need to specify a different region.
	awsRegion := "us-east-2"
	vpcAzs := aws.GetAvailabilityZones(t, awsRegion)[:3]
	testRedshift := !testing.Short()

	terraformOptions := &terraform.Options{
		TerraformDir: tempTestFolder,
		Vars: map[string]interface{}{
			"vpc_azs":       vpcAzs,
			"test_name":     testName,
			"test_redshift": testRedshift,
			"force_destroy": true,
		},
		EnvVars: map[string]string{
			"AWS_DEFAULT_REGION": awsRegion,
		},
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
}
*/
