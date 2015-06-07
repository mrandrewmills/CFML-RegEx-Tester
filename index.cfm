<!DOCTYPE html>
	<head>
		<title>ColdFusion RegEx Tester</title>
		<style type="text/css">
			body * {font-family: "Trebuchet MS", sans-serif; }
			body { width: 50%; margin-left: auto; margin-right: auto; font-size: 1.0em;}
			textarea { width: 100%; height: 150px; }
			#regex { width: 50%; }
		</style>
	</head>
	<body>
		<h1>ColdFusion RegEx Match Tester</h1>

		<p>Test drive your Regular Expressions in ColdFusion, with bind/AJAXy goodness.</p>

		<cfform name="tester">
			<label class="formfields" for="regex">Regular Expression:</label>
			<cfinput type="text" name="regex" id="regex" /><br />
			<br />

			<label for="operation" class="formfields">Operation:</label>
			<cfselect name="operation">
				<option value="ReMatch">ReMatch</option>
				<option value="ReMatchNoCase">ReMatchNoCase</option>
			</cfselect><br /><br />

			<label for="data" class="formfields">Data:</label><br />
			<cftextarea name="data" id="data" /><br /><br />

			<label for="result" class="formfields">Result:</label><br /><br />
			<cfdiv name="result" bind="cfc:RegEx.TestRegEx({data@keyup},{regex@keyup},
										{operation})" >
			</cfdiv>
		</cfform>
	</body>
</html>
