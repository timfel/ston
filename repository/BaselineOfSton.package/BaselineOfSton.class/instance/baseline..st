baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'Ston-Core'.
            spec package: 'Ston-Tests' with: [ spec requires: 'Ston-Core' ].
            spec
                group: 'default' with: #('Core');
                group: 'Core' with: #('Ston-Core');
                group: 'Tests' with: #('Ston-Tests') ]