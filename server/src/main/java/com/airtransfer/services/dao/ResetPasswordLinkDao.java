package com.airtransfer.services.dao;

import com.airtransfer.models.ResetPasswordLink;

/**
 * User: sergey
 * Date: 12:38 PM 12/12/11
 */
public interface ResetPasswordLinkDao extends AbstractDao<ResetPasswordLink, Long> {

    public ResetPasswordLink findByUid(final String uid);
}
