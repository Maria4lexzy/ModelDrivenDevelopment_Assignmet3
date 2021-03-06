/*
 * generated by Xtext 2.26.0
 */
grammar InternalMath;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package dk.sdu.mmmi.mdsd.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package dk.sdu.mmmi.mdsd.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import dk.sdu.mmmi.mdsd.services.MathGrammarAccess;

}

@parser::members {

 	private MathGrammarAccess grammarAccess;

    public InternalMathParser(TokenStream input, MathGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Program";
   	}

   	@Override
   	protected MathGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleProgram
entryRuleProgram returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getProgramRule()); }
	iv_ruleProgram=ruleProgram
	{ $current=$iv_ruleProgram.current; }
	EOF;

// Rule Program
ruleProgram returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getProgramAccess().getProgramAction_0(),
					$current);
			}
		)
		otherlv_1='program'
		{
			newLeafNode(otherlv_1, grammarAccess.getProgramAccess().getProgramKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getProgramAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getProgramRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getProgramAccess().getExtExternalParserRuleCall_3_0());
				}
				lv_ext_3_0=ruleExternal
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getProgramRule());
					}
					add(
						$current,
						"ext",
						lv_ext_3_0,
						"dk.sdu.mmmi.mdsd.Math.External");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getProgramAccess().getMathMathExpParserRuleCall_4_0());
				}
				lv_math_4_0=ruleMathExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getProgramRule());
					}
					set(
						$current,
						"math",
						lv_math_4_0,
						"dk.sdu.mmmi.mdsd.Math.MathExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleExternal
entryRuleExternal returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExternalRule()); }
	iv_ruleExternal=ruleExternal
	{ $current=$iv_ruleExternal.current; }
	EOF;

// Rule External
ruleExternal returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getExternalAccess().getExternalAction_0(),
					$current);
			}
		)
		otherlv_1='external'
		{
			newLeafNode(otherlv_1, grammarAccess.getExternalAccess().getExternalKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getExternalAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getExternalRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='('
		{
			newLeafNode(otherlv_3, grammarAccess.getExternalAccess().getLeftParenthesisKeyword_3());
		}
		(
			(
				(
					lv_params_4_0=RULE_ID
					{
						newLeafNode(lv_params_4_0, grammarAccess.getExternalAccess().getParamsIDTerminalRuleCall_4_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getExternalRule());
						}
						addWithLastConsumed(
							$current,
							"params",
							lv_params_4_0,
							"org.eclipse.xtext.common.Terminals.ID");
					}
				)
			)
			(
				otherlv_5=','
				{
					newLeafNode(otherlv_5, grammarAccess.getExternalAccess().getCommaKeyword_4_1_0());
				}
				(
					(
						lv_params_6_0=RULE_ID
						{
							newLeafNode(lv_params_6_0, grammarAccess.getExternalAccess().getParamsIDTerminalRuleCall_4_1_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getExternalRule());
							}
							addWithLastConsumed(
								$current,
								"params",
								lv_params_6_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
			)*
		)?
		otherlv_7=')'
		{
			newLeafNode(otherlv_7, grammarAccess.getExternalAccess().getRightParenthesisKeyword_5());
		}
	)
;

// Entry rule entryRuleMathExp
entryRuleMathExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMathExpRule()); }
	iv_ruleMathExp=ruleMathExp
	{ $current=$iv_ruleMathExp.current; }
	EOF;

// Rule MathExp
ruleMathExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getMathExpAccess().getMathExpAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMathExpAccess().getVariablesVarBindingParserRuleCall_1_0());
				}
				lv_variables_1_0=ruleVarBinding
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMathExpRule());
					}
					add(
						$current,
						"variables",
						lv_variables_1_0,
						"dk.sdu.mmmi.mdsd.Math.VarBinding");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleExternalUse
entryRuleExternalUse returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExternalUseRule()); }
	iv_ruleExternalUse=ruleExternalUse
	{ $current=$iv_ruleExternalUse.current; }
	EOF;

// Rule ExternalUse
ruleExternalUse returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getExternalUseAccess().getExternalUseAction_0(),
					$current);
			}
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getExternalUseRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getExternalUseAccess().getRefExternalCrossReference_1_0());
				}
			)
		)
		otherlv_2='('
		{
			newLeafNode(otherlv_2, grammarAccess.getExternalUseAccess().getLeftParenthesisKeyword_2());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getExternalUseAccess().getParamsExpParserRuleCall_3_0_0());
					}
					lv_params_3_0=ruleExp
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getExternalUseRule());
						}
						add(
							$current,
							"params",
							lv_params_3_0,
							"dk.sdu.mmmi.mdsd.Math.Exp");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_4=','
				{
					newLeafNode(otherlv_4, grammarAccess.getExternalUseAccess().getCommaKeyword_3_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getExternalUseAccess().getParamsExpParserRuleCall_3_1_1_0());
						}
						lv_params_5_0=ruleExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getExternalUseRule());
							}
							add(
								$current,
								"params",
								lv_params_5_0,
								"dk.sdu.mmmi.mdsd.Math.Exp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_6=')'
		{
			newLeafNode(otherlv_6, grammarAccess.getExternalUseAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRuleVarBinding
entryRuleVarBinding returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVarBindingRule()); }
	iv_ruleVarBinding=ruleVarBinding
	{ $current=$iv_ruleVarBinding.current; }
	EOF;

// Rule VarBinding
ruleVarBinding returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getVarBindingAccess().getVarBindingAction_0(),
					$current);
			}
		)
		otherlv_1='var'
		{
			newLeafNode(otherlv_1, grammarAccess.getVarBindingAccess().getVarKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getVarBindingAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVarBindingRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getVarBindingAccess().getEqualsSignKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getVarBindingAccess().getExpressionExpParserRuleCall_4_0());
				}
				lv_expression_4_0=ruleExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVarBindingRule());
					}
					set(
						$current,
						"expression",
						lv_expression_4_0,
						"dk.sdu.mmmi.mdsd.Math.Exp");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleExp
entryRuleExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExpRule()); }
	iv_ruleExp=ruleExp
	{ $current=$iv_ruleExp.current; }
	EOF;

// Rule Exp
ruleExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getExpAccess().getFactorParserRuleCall_0());
		}
		this_Factor_0=ruleFactor
		{
			$current = $this_Factor_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getExpAccess().getPlusLeftAction_1_0_0_0(),
								$current);
						}
					)
					otherlv_2='+'
					{
						newLeafNode(otherlv_2, grammarAccess.getExpAccess().getPlusSignKeyword_1_0_0_1());
					}
				)
				    |
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getExpAccess().getMinusLeftAction_1_0_1_0(),
								$current);
						}
					)
					otherlv_4='-'
					{
						newLeafNode(otherlv_4, grammarAccess.getExpAccess().getHyphenMinusKeyword_1_0_1_1());
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getExpAccess().getRightFactorParserRuleCall_1_1_0());
					}
					lv_right_5_0=ruleFactor
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getExpRule());
						}
						set(
							$current,
							"right",
							lv_right_5_0,
							"dk.sdu.mmmi.mdsd.Math.Factor");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleParenthesis
entryRuleParenthesis returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParenthesisRule()); }
	iv_ruleParenthesis=ruleParenthesis
	{ $current=$iv_ruleParenthesis.current; }
	EOF;

// Rule Parenthesis
ruleParenthesis returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getParenthesisAccess().getParenthesisAction_0(),
					$current);
			}
		)
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getParenthesisAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getParenthesisAccess().getExpExpParserRuleCall_2_0());
				}
				lv_exp_2_0=ruleExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getParenthesisRule());
					}
					set(
						$current,
						"exp",
						lv_exp_2_0,
						"dk.sdu.mmmi.mdsd.Math.Exp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=')'
		{
			newLeafNode(otherlv_3, grammarAccess.getParenthesisAccess().getRightParenthesisKeyword_3());
		}
	)
;

// Entry rule entryRuleFactor
entryRuleFactor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFactorRule()); }
	iv_ruleFactor=ruleFactor
	{ $current=$iv_ruleFactor.current; }
	EOF;

// Rule Factor
ruleFactor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getFactorAccess().getPrimaryParserRuleCall_0());
		}
		this_Primary_0=rulePrimary
		{
			$current = $this_Primary_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getFactorAccess().getMultLeftAction_1_0_0_0(),
								$current);
						}
					)
					otherlv_2='*'
					{
						newLeafNode(otherlv_2, grammarAccess.getFactorAccess().getAsteriskKeyword_1_0_0_1());
					}
				)
				    |
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getFactorAccess().getDivLeftAction_1_0_1_0(),
								$current);
						}
					)
					otherlv_4='/'
					{
						newLeafNode(otherlv_4, grammarAccess.getFactorAccess().getSolidusKeyword_1_0_1_1());
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getFactorAccess().getRightPrimaryParserRuleCall_1_1_0());
					}
					lv_right_5_0=rulePrimary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getFactorRule());
						}
						set(
							$current,
							"right",
							lv_right_5_0,
							"dk.sdu.mmmi.mdsd.Math.Primary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePrimary
entryRulePrimary returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimaryRule()); }
	iv_rulePrimary=rulePrimary
	{ $current=$iv_rulePrimary.current; }
	EOF;

// Rule Primary
rulePrimary returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrimaryAccess().getMathNumberAction_0_0(),
						$current);
				}
			)
			(
				(
					lv_value_1_0=RULE_INT
					{
						newLeafNode(lv_value_1_0, grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getPrimaryRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_1_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getParenthesisParserRuleCall_1());
		}
		this_Parenthesis_2=ruleParenthesis
		{
			$current = $this_Parenthesis_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getVariableUseParserRuleCall_2());
		}
		this_VariableUse_3=ruleVariableUse
		{
			$current = $this_VariableUse_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getLetBindingParserRuleCall_3());
		}
		this_LetBinding_4=ruleLetBinding
		{
			$current = $this_LetBinding_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getExternalUseParserRuleCall_4());
		}
		this_ExternalUse_5=ruleExternalUse
		{
			$current = $this_ExternalUse_5.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getExternalParserRuleCall_5());
		}
		this_External_6=ruleExternal
		{
			$current = $this_External_6.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleLetBinding
entryRuleLetBinding returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLetBindingRule()); }
	iv_ruleLetBinding=ruleLetBinding
	{ $current=$iv_ruleLetBinding.current; }
	EOF;

// Rule LetBinding
ruleLetBinding returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getLetBindingAccess().getLetBindingAction_0(),
					$current);
			}
		)
		otherlv_1='let'
		{
			newLeafNode(otherlv_1, grammarAccess.getLetBindingAccess().getLetKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getLetBindingAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLetBindingRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getLetBindingAccess().getEqualsSignKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetBindingAccess().getBindingExpParserRuleCall_4_0());
				}
				lv_binding_4_0=ruleExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetBindingRule());
					}
					set(
						$current,
						"binding",
						lv_binding_4_0,
						"dk.sdu.mmmi.mdsd.Math.Exp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5='in'
		{
			newLeafNode(otherlv_5, grammarAccess.getLetBindingAccess().getInKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetBindingAccess().getBodyExpParserRuleCall_6_0());
				}
				lv_body_6_0=ruleExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetBindingRule());
					}
					set(
						$current,
						"body",
						lv_body_6_0,
						"dk.sdu.mmmi.mdsd.Math.Exp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_7='end'
		{
			newLeafNode(otherlv_7, grammarAccess.getLetBindingAccess().getEndKeyword_7());
		}
	)
;

// Entry rule entryRuleVariableUse
entryRuleVariableUse returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableUseRule()); }
	iv_ruleVariableUse=ruleVariableUse
	{ $current=$iv_ruleVariableUse.current; }
	EOF;

// Rule VariableUse
ruleVariableUse returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getVariableUseAccess().getVariableUseAction_0(),
					$current);
			}
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableUseRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getVariableUseAccess().getRefBindingCrossReference_1_0());
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
