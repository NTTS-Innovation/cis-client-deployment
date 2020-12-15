$params = @{"SubscriptionId"=$Env:SubscriptionId;
  "ResourceGroup"=$Env:ResourceGroup;
  "DeploymentName"=$Env:DeploymentName;
  "EventHubNamespace"=$Env:eventhubNameSpace;
  "EventHubName"=$Env:EventHubName;
  "EventHubPolicyName"=$Env:EventHubPolicyName;
  "EventHubConsumerGroup"=$Env:EventHubConsumerGroup;
  "EventHubConnectionString"=$Env:EventHubConnectionString;
  "Region"=$Env:Region;
  "EventHubPrimaryKey"=$Env:EventHubPrimaryKey;
  "FunctionAppName"=$Env:FunctionAppName;
  "FunctionAppKey"=$Env:FunctionAppKey;
  "DeploymentTime"=$Env:DeploymentTime;
  "EndPoint"=$Env:EndPoint;
}

Invoke-WebRequest -Uri $Env:EndPoint -Method POST -Body ($params|ConvertTo-Json) -ContentType "application/json"