#!/usr/bin/env bats
source ./compare_semantic_versions

@test 'Succeeds when new major version is greater then the old major version' {
	echo compare_semantic_version
	run compare_semantic_version 1.1.1 2.1.1
	[ $status = 0 ]
}

@test 'Fails when new major version is equal to the old major version' {
	run compare_semantic_version 1.2.1 1.2.1
	[ $status = 1 ]
}

@test 'Fails when new major version less then the old major version' {
	run compare_semantic_version 1.2.1 1.1.1
	[ $status = 1 ]
}

# Minor Version tests
@test 'Succeeds when new minor version is greater then the old minor version' {
	run compare_semantic_version 1.1.1 1.2.1
	[ $status = 0 ]
}

@test 'Fails when new minor version is equal to the old minor version' {
	run compare_semantic_version 1.2.1 1.2.1
	[ $status = 1 ]
}

@test 'Fails when new minor version less then the old minor version' {
	run compare_semantic_version 1.2.1 1.1.1
	[ $status = 1 ]
}

# Patch Version Tests
@test 'Succeeds when new patch version is greater then the old patch version' {
	run compare_semantic_version 1.1.1 1.1.2
	[ $status = 0 ]
}

@test 'Fails when new patch version is equal to the old patch version' {
	run compare_semantic_version 1.1.2 1.1.2
	[ $status = 1 ]
}

@test 'Fails when new patch version less then the old patch version' {
	run compare_semantic_version 1.1.2 1.1.1
	[ $status = 1 ]
}
