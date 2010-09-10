/*
 * (C) Copyright 2009 Nuxeo SA (http://nuxeo.com/) and contributors.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the GNU Lesser General Public License
 * (LGPL) version 2.1 which accompanies this distribution, and is available at
 * http://www.gnu.org/licenses/lgpl.html
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * Contributors:
 *     arussel
 */
package org.nuxeo.ecm.platform.routing.test;

import java.util.List;

import org.nuxeo.ecm.core.api.ClientException;
import org.nuxeo.ecm.platform.routing.api.DocumentRoute;

/**
 * @author arussel
 *
 */
public class DocumentRoutingServiceTestCase extends DocumentRoutingTestCase {
    public void testCreateNewInstance() {
        assertTrue(true);
    }

    public void testGetAvailableDocumentRouteModel() throws ClientException {
        DocumentRoute route = createDocumentRoute(session, ROUTE1);
        assertNotNull(route);
        List<DocumentRoute> routes = service.getAvailableDocumentRouteModel(session);
        assertEquals(1, routes.size());
    }
}
