package com.camelo.camelobackend.datasources.h2.mapper;

import com.camelo.camelobackend.datasources.h2.model.CartaoModel;
import com.camelo.camelobackend.datasources.h2.model.UserModel;
import com.camelo.camelobackend.datasources.h2.model.RoleModel;
import com.camelo.camelobackend.domain.Cartao;
import com.camelo.camelobackend.domain.Role;
import com.camelo.camelobackend.domain.User;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface UserMapper {

    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    UserModel map(User profile);
    User map(UserModel profile);

    CartaoModel map(Cartao cartao);
    Cartao map(CartaoModel cartao);

    RoleModel map(Role value);
    Role map(RoleModel value);
}
