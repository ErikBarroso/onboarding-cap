sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/PurchaseOrderHeadersList',
		'project1/test/integration/pages/PurchaseOrderHeadersObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseOrderHeadersList, PurchaseOrderHeadersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePurchaseOrderHeadersList: PurchaseOrderHeadersList,
					onThePurchaseOrderHeadersObjectPage: PurchaseOrderHeadersObjectPage
                }
            },
            opaJourney.run
        );
    }
);