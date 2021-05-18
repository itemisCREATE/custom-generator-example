package org.yakindu.generator.custom

import com.yakindu.sct.generator.core.ISGraphGenerator
import com.yakindu.sct.model.sgen.GeneratorEntry
import com.yakindu.sct.model.sgraph.Choice
import com.yakindu.sct.model.sgraph.Entry
import com.yakindu.sct.model.sgraph.Region
import com.yakindu.sct.model.sgraph.State
import com.yakindu.sct.model.sgraph.Statechart
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.generator.IFileSystemAccess
import com.yakindu.sct.model.sgraph.Synchronization
import com.yakindu.sct.model.sgraph.Exit

/**
 * 
 * @author andreas muelder - Initial contribution and API
 * 
 */
class Generator implements ISGraphGenerator {

	override generate(Statechart model, GeneratorEntry entry, IFileSystemAccess fsa) {
		fsa.generateFile(
			"example.txt",
			'''
				Statechart «model.name»
				
				«FOR region : model.regions»
					«region.generate»
				«ENDFOR»
			'''
		)
	}

	def dispatch String generate(State it) {
		'''
			State «name»
			«FOR transition : outgoingTransitions»
				Transition «transition.specification»
			«ENDFOR»
		'''
	}

	def dispatch String generate(Region it) {
		'''
			Region «name»
			«FOR vertex : vertices»
				«vertex.generate»
			«ENDFOR»
		'''
	}

	def dispatch String generate(Entry it) {
		'''Entry «name»: «kind»'''
	}

	def dispatch String generate(Choice it) {
		'''Choice'''
	}

	def dispatch String generate(Synchronization it) {
		'''Synchronization «name»'''
	}

	def dispatch String generate(Exit it) {
		'''Exit «name»'''
	}

	// Fallback
	def dispatch String generate(EObject object) {
		''''''
	}
}
