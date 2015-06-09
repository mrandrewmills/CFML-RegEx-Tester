<cfcomponent output="false">

	<cffunction name="TestRegEx" access="remote">
		<cfargument name="data" type="string" required="yes">
		<cfargument name="regex" type="string" required="yes">
		<cfargument name="operation" type="string" required="yes">

		<cftry>
			<cfset VARIABLES.result = "">

			<cfif ARGUMENTS.regex IS NOT "">
				<cfswitch expression="#Trim(ARGUMENTS.operation)#">

					<cfcase value="ReMatch">
						<cftry>
							<cfset VARIABLES.result = ReMatch(ARGUMENTS.regex, ARGUMENTS.data)>	
						<cfcatch type="any">
							<!--- add ReMatch specific error handling here --->
						</cfcatch>
						</cftry>
						

					</cfcase>

					<cfcase value="ReMatchNoCase">
						<cftry>
							<cfset VARIABLES.result = ReMatchNoCase(ARGUMENTS.regex, ARGUMENTS.data)>
						<cfcatch type="any">
							<!--- add ReMatchNoCase specific error handling here --->
						</cfcatch>
						</cftry>
					</cfcase>

				</cfswitch>
			</cfif>

			<cfreturn VARIABLES.result>

			<cfcatch type="any">
				<!--- error handling catch-all for the entire component --->
				<cfsavecontent variable="logMsg">
					<cfdump var="#cfcatch" format="text">
				</cfsavecontent>
				<cflog text="#logMsg#" type="error" application="yes">
			</cfcatch>
		</cftry>
	</cffunction>

</cfcomponent>
