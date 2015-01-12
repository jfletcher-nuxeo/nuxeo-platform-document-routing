<#include "views/doc/macros.ftl"/>
<@extends src="baseapi.ftl">
<@block name="apis">

     {
      "path": "/task",
      "description": "List tasks",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getUserRelatedWorkflowTasks",
          "type":"tasks",
          <@params names = ["taskUserIdQueryParam", "taskWorkflowInstanceIdQueryParam"]/>,
          "summary":"Query tasks by user and workflow ids",
          "notes": "Only task instance which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]

    },
    {
      "path": "/task/{taskId}",
      "description": "Get task by its id",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getTaskById",
          "type":"task",
          <@params names = ["taskId"]/>,
          "summary":"Get a task by its id",
          "notes": "Only task instance which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]

    },
    {
      "path": "/task/{taskId}/{action}",
      "description": "Complete task",
      "operations" : [
        {
          "method":"PUT",
          "nickname":"completeTask",
          <@params names = ["taskId", "taskAction", "taskCompletionRequestBody"]/>,
          "summary":"Complete task",
          "notes": "Complete a workflow related task",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]

    },
    {
      "path": "/id/{docId}/@task",
      "description": "Task adapter",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getDocumentRelatedWorkflowTasks",
          "type":"tasks",
          <@params names = ["taskUserIdQueryParam", "taskWorkflowInstanceIdQueryParam"]/>,
          "summary":"List tasks of the given document",
          "notes": "Only task instance which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]

    },
    {
      "path": "/path/{docPath}/@task",
      "description": "Task adapter",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getDocumentRelatedWorkflowTasks",
          "type":"tasks",
          <@params names = ["taskUserIdQueryParam", "taskWorkflowInstanceIdQueryParam"]/>,
          "summary":"List tasks of the given document",
          "notes": "Only task instance which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]

    }


</@block>

<@block name="models">
  <#include "views/doc/datatypes/task.ftl"/>
  <#include "views/doc/datatypes/taskCompletionRequest.ftl"/>
</@block>
</@extends>