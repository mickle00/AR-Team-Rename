Map<String, String> nameMap = new Map<String, String> {
   'GB - Bellevue' => 'AR Bellevue'
  ,'GB - Boston' => 'AR Boston'
  ,'GB - Brazil' => 'AR Brazil'
  ,'GB - Canada General' => 'AR Canada General'
  ,'GB - Greece' => 'AR Greece'
  ,'GB - Italy' => 'AR Italy'
  ,'GB - Jakarta' => 'AR Jakarta'
  ,'GB - Korea' => 'AR Korea'
  ,'GB - London' => 'AR London'
  ,'GB - Madrid' => 'AR Madrid'
  ,'GB - Manila' => 'AR Manila'
  ,'GB - Mexico' => 'AR Mexico'
  ,'GB - Montreal' => 'AR Montreal'
  ,'GB - Paris' => 'AR Paris'
  ,'GB - Seoul' => 'AR Seoul'
  ,'GB - St. Petersburg' => 'AR St. Petersburg'
  ,'GB - Taipei' => 'AR Taipei'
  ,'GB - Thailand' => 'AR Thailand'
  ,'GB - Turkey' => 'AR Turkey'
  ,'GB - US General' => 'AR US General'
  ,'GB - USA NE Region' => 'AR USA NE Region'
  ,'GB - Denver' => 'AR Denver'
};

system.debug(nameMap);

List<Case_Team__c> cts = [SELECT Id, Name, Team__c FROM Case_Team__c WHERE Team__c IN :nameMap.keySet()];

for (Case_Team__c ct : cts){
  ct.Name = nameMap.get(ct.Team__c);
  ct.Team__c = nameMap.get(ct.Team__c);
  system.debug(ct);
}

//update cts;
