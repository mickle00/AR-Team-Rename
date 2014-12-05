//contains groups & queues
//can filter off of type = 'Queue' or 'Regular'
List<Group> arGroups = [SELECT Name, DeveloperName FROM Group WHERE DeveloperName like '%Rounder%'];

for (Group g : arGroups){
    if (g.Name != null) g.Name = g.Name.replace('All Rounders', 'AR');
    g.DeveloperName = g.DeveloperName.replace('All_Rounders', 'AR');
    system.debug(g);
    try { 
      update g; 
    } catch (Exception e){
        system.debug(e);
        system.debug(g);
    }
}
