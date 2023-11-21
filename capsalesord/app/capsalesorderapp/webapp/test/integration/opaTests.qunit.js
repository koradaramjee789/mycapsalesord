sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capsalesorderapp/test/integration/FirstJourney',
		'capsalesorderapp/test/integration/pages/SalesOrderSetList',
		'capsalesorderapp/test/integration/pages/SalesOrderSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrderSetList, SalesOrderSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capsalesorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrderSetList: SalesOrderSetList,
					onTheSalesOrderSetObjectPage: SalesOrderSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);