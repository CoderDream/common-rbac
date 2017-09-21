package com.billjc.model;

public class RoleFunction {
    private Long id;

    private Long roleId;

    private Long functionKey;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getFunctionKey() {
        return functionKey;
    }

    public void setFunctionKey(Long functionKey) {
        this.functionKey = functionKey;
    }
}