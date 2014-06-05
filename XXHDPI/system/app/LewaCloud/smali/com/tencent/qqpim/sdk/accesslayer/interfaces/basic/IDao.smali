.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
.super Ljava/lang/Object;


# virtual methods
.method public abstract add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
.end method

.method public abstract add(Ljava/util/List;Ljava/util/List;[I)Z
.end method

.method public abstract delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract getAllEntityId(Ljava/util/List;Z)Ljava/util/List;
.end method

.method public abstract isExisted(Ljava/lang/String;)Z
.end method

.method public abstract query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method public abstract query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method public abstract query()Ljava/util/List;
.end method

.method public abstract queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method public abstract queryNameById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryNumber()I
.end method

.method public abstract update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract update(Ljava/util/List;[I)Z
.end method
