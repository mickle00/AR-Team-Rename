echo 'NEED TO MANUALLY UPDATE Case.Team__c VALUES from GB - YYY to AR YYY prior to running this'

echo 'Logging into Salesforce'
force login -i=test
echo 'Updating Group and Queue Names'
force apex < update_groups_and_queues.apex
echo 'Updating CaseTeam__c records'
force apex < update_case_teams.apex
ant getListViews
echo 'Cleaning List Views'
./clean_list_views.sh
echo 'Deploying List Views'
ant deployListViews

ant getAssignmentRules
echo 'Cleaning Assignment Rules'
./clean_assignment_rules.sh
echo 'Deploying Assignment Rules'
ant deployAssignmentRules
