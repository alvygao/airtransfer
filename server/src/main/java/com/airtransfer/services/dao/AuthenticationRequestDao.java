package com.airtransfer.services.dao;

import com.airtransfer.models.AuthenticationRequest;

/**
 * User: sergey
 * Date: 3:59 PM 12/10/11
 */
public interface AuthenticationRequestDao extends AbstractDao<AuthenticationRequest, Long> {

     AuthenticationRequest findByRegUid(final String hash);

}
