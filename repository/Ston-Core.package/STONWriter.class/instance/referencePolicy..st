initialize-release
referencePolicy: policy
	( #(#normal #ignore #error) includes: policy ) ifFalse: [ self error: 'unknown policy' ].
	referencePolicy := policy
