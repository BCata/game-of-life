package life.generator

import life.dSL.RulesOfLife

class CodeGenerator {
	def static toCode(RulesOfLife root)'''
	def apply_rules(current_value, total, on_value, off_value):
	    if current_value == on_value:
	        if total < «root.lowDeathCondition» or total > «root.highDeathCondition»:
	            return off_value
	    else:
	        if total == «root.aliveCondition»:
	            return on_value
	    return current_value
	'''
}