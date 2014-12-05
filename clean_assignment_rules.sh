#! /bin/bash
cd 'assignment_rules/assignmentRules'
#change the group display name
sed -i 's/GB - /AR /g' *
sed -i 's/All Rounders /AR /g' *
