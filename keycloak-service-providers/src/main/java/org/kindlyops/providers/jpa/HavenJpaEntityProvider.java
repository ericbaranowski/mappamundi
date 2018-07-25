package org.kindlyops.providers.jpa;

import org.keycloak.connections.jpa.entityprovider.JpaEntityProvider;

import java.util.Arrays;
import java.util.List;
import java.util.Collections;

public class HavenJpaEntityProvider implements JpaEntityProvider {

    @Override
    public List<Class<?>> getEntities() {
        return Collections.<Class<?>>singletonList(HavenMembership.class);
        // return Arrays.asList(HavenMembership.class);
    }

    @Override
    public String getChangelogLocation() {
        return "META-INF/haven-changelog-1.0.xml";
    }

    @Override
    public void close() {
    }

    @Override
    public String getFactoryId() {
        return HavenJpaEntityProviderFactory.ID;
    }
}
