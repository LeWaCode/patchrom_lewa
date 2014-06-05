.class final Lcom/tencent/qqpim/sdk/tccsync/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method public static a()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v1, p0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "StatisticsUtil"

    const-string v2, "getTotalLocalCalllogNum dao==null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalCalllogNum():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I
    .locals 6

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getSmsStartTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSmsNumBetweenTime(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalSmsNum(Context context, SmsTimeType time):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;
    .locals 11

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    new-instance v9, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;

    invoke-direct {v9}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;

    invoke-direct {v1}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;-><init>()V

    invoke-static {v1, p0, p2}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->setAccount(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    move-object v1, v9

    goto :goto_0

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-object v8, v0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v2

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteTccSyncCount(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;-><init>()V

    iput-object v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mModify:I

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mFailed:I

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAll:I

    invoke-virtual {v2, p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setAccount(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isChanged()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v9, v2}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->add(Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "collectRemoteSyncDataChange(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    goto/16 :goto_0
.end method

.method public static a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;-><init>()V

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;

    invoke-direct {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a()Ljava/util/HashMap;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setAddIds(Ljava/util/List;)V

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    if-eqz p2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setDelIds(Ljava/util/List;)V

    :cond_4
    move-object v0, v3

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setAddIds(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setDelIds(Ljava/util/List;)V

    move-object v2, v1

    move-object v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    if-eqz p2, :cond_8

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    iget v6, v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    if-eqz p2, :cond_7

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object v1, v0

    move-object v2, v0

    goto :goto_3
.end method

.method public static a(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    move-result-object v1

    iget v2, v1, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v1, v1, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static a(Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->makeCheckWapDataPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostBody()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/c;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->solveLoginResponsePackage([BI)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;

    invoke-direct {v5}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;-><init>()V

    const-string v6, "StatisticsUtil"

    const-string v7, "collectRemoteSyncCheck(), getRomteInfo"

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1, p2}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "StatisticsUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "collectRemoteSyncCheck(), getRomteInfo="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteSyncCheck(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v6

    invoke-virtual {v5, v4}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteContactDelTotal(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v7

    const-string v8, "StatisticsUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "collectRemoteSyncCheck(), getRemoteSyncCheck="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resGetDelContact="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "StatisticsUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "collectRemoteSyncCheck(), remoteContactDelTotal="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/tencent/qqpim/sdk/tccsync/a/a;->d:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "StatisticsUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "collectRemoteSyncCheck(), remoteContactTotal="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " remoteSmsTotal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/tencent/qqpim/sdk/tccsync/a/a;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " remoteCalllogTotal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/tencent/qqpim/sdk/tccsync/a/a;->c:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sput v4, Lcom/tencent/qqpim/sdk/tccsync/a/a;->d:I

    :cond_2
    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Lcom/tencent/qqpim/sdk/tccsync/a/a;->b:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Lcom/tencent/qqpim/sdk/tccsync/a/a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "collectRemoteSyncCheck(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/tccsync/a/a;->b:I

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "StatisticsUtil"

    const-string v2, "getTotalLocalContactNum dao==null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalContactNum():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/tccsync/a/a;->c:I

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v1, p0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "StatisticsUtil"

    const-string v2, "getTotalLocalSmsNum dao==null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalSmsNum():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
