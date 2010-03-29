<%@ include file="/include.jsp" %>
<%@ page language="java" session="true" errorPage="/runtimeError.jsp" %>
<jsp:useBean id="build" type="com.cradiator.TeamCityStatusPlugin.BuildTypeMonitorViewState" scope="request"/>

<Build name="${build.name}"
         category=""
         activity="${build.activityMessage}"
         lastBuildStatus="${build.lastFinishedBuild.buildStatus}"
         lastBuildLabel="${build.lastFinishedBuild.buildNumber}"
         lastBuildTime="${build.lastFinishedBuild.finishDate}"
         webUrl=""
         CurrentMessage=""
         BuildStage=""
         BuiltPercent="${build.completedPercent}">
    <messages>
        <c:if test="${build.failing}">
            <message text="${build.committersString}" kind="Breakers"/>
        </c:if>
    </messages>
</Build>