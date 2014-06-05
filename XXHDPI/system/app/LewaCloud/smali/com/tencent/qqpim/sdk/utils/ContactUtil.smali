.class public Lcom/tencent/qqpim/sdk/utils/ContactUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NameStructureToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const-string v0, ";"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v0

    aput v4, v2, v4

    const/4 v3, 0x1

    aput v3, v2, v5

    aput v6, v2, v6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    array-length v4, v2

    :goto_1
    if-lt v0, v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget v5, v2, v0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static filterEmptyContact(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->isEmptyContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static filterEmptyContact(Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->isEmptyContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static filterEmptyContact([Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    move v0, v2

    :goto_1
    if-lt v0, v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_2

    new-array v0, v2, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_0

    :cond_1
    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->isEmptyContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method private static getAllContacts(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, v1, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, v2, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getAllContactsFromDB()Ljava/util/List;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v0, 0x1

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v3, "ContactUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllContacts finish!  time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAllContactsId()Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllContactsNoPhoto(Z)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getAllContacts(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getAllContactsOnlyDisplayName()[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    new-array v1, v3, [Ljava/lang/String;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v1, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    array-length v2, v1

    if-ne v0, v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length v7, v1

    move v2, v3

    :goto_1
    if-lt v2, v7, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_0

    :cond_5
    aget-object v0, v1, v2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v4, "FN"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v4, 0x2

    const-string v7, ""

    invoke-virtual {v2, v4, v7}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    new-instance v4, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    invoke-interface {v4, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getAllContactsWithPhoto(Z)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getAllContacts(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getContact(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Z)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getContactAllItemByIds(Ljava/util/List;Z)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getContactsByIds(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getContactsByIds(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_1
.end method

.method public static getEmailList(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "EMAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_0
.end method

.method public static getFirstPhone(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_0
.end method

.method public static getNameFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "N"

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getContentFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ";"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "FN"

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getContentFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "N"

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getContentFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->NameStructureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getNoEmptyGroupCount(Ljava/util/List;)I
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getOnlyGroupId_ContactHasGroup(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v4, v3

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    aget-object v0, v3, v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getGroupIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static getOnlyGroupId_ContactHasGroup(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneList(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "TEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_0
.end method

.method public static isEmptyContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyOrComma(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyOrComma(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyOrComma(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v4, "EMAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyOrComma(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_1
.end method

.method public static isSameContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static isSameContactSim(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getNameFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getNameFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getFirstPhone(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getPhoneList(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0
.end method

.method public static mergeTwoContacts(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v0

    invoke-virtual {v5, p1}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v4

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v2, v4

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v0, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    array-length v4, v0

    add-int/lit8 v7, v4, -0x1

    move v4, v3

    :goto_2
    if-lt v4, v7, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_3
    if-lt v4, v7, :cond_6

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    :goto_4
    if-lt v2, v7, :cond_8

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_5
    const-string v2, "ContactUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mergeTwoContacts()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_6
    const-string v4, "ContactUtil"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_8
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_7
    const-string v2, "ContactUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mergeTwoContacts()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_6
.end method

.method public static phoneListHaveContainingRelationship(Ljava/util/List;Ljava/util/List;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    :goto_1
    if-lt v3, v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v3, v1

    :goto_2
    if-lt v3, v6, :cond_4

    move v0, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static queryContactNumber()I
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I

    move-result v0

    return v0
.end method
