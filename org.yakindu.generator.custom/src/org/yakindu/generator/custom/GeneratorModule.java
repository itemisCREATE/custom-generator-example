package org.yakindu.generator.custom;

import com.google.inject.Binder;
import com.yakindu.sct.generator.core.IGeneratorModule;
import com.yakindu.sct.generator.core.ISGraphGenerator;
import com.yakindu.sct.model.sgen.GeneratorEntry;
/**
 *
 * @author andreas muelder - Initial contribution and API
 *
 */
public class GeneratorModule implements IGeneratorModule {

	@Override
	public void configure(GeneratorEntry entry, Binder binder) {
		binder.bind(ISGraphGenerator.class).to(Generator.class);
	}

}
