.class public Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;
.super Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;


# static fields
.field private static final TAG:Ljava/lang/String; = "SYSSmsDaoV1"

.field private static volatile sysSmsDaoV1:Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->context:Landroid/content/Context;

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->initHashMaps()V

    return-void
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method public queryBatch(Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->query()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-array v1, v2, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    array-length v3, p1

    new-array v0, v3, [Lcom/tencent/qqpim/sdk/object/sms/SYSSms;

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    aput-object v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public queryNumber()I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->queryNumberDefault()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const-string v3, "seen"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->hasColumnSeen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "SYSSmsDaoV1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryNumber"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryNumber():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method protected queryNumberDefault()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
