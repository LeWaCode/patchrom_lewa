.class public final Lcom/tencent/qqpim/sdk/tccsync/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tccsync/ITccSyncDbAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private d:Ljava/util/List;

.field private e:I

.field private f:Lcom/tencent/qqpim/sdk/interfaces/i;

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Lcom/tencent/tccsync/RemoteSync$SyncType;

.field private j:Lcom/tencent/qqpim/sdk/core/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    iput v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->g:Ljava/util/List;

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->h:Z

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object p4, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    iput v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->g:Ljava/util/List;

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->h:Z

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object p5, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-boolean p6, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->h:Z

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/tccsync/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/tccsync/a;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 7

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/tccsync/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/tccsync/a;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-array v5, v1, [B

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_5

    array-length v0, v3

    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_0

    move v2, v1

    :goto_4
    if-lt v2, v4, :cond_2

    return-void

    :cond_0
    aget-object v7, v3, v2

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    const/4 v0, 0x0

    aput v0, p3, v2

    invoke-virtual {p2, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v7, "TccSyncDb"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "add result idAdded="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    const/4 v0, 0x0

    aput v0, p3, v2

    invoke-virtual {p2, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v3, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v2

    aput v1, p3, v2

    invoke-virtual {p2, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v3, "TccSyncDb"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add(), "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p3, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p2, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v3, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v2

    aput v1, p3, v2

    const-string v3, "TccSyncDb"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add(), "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "add(), "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move-object v3, v2

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    move v4, v1

    goto/16 :goto_0
.end method

.method private a([Ljava/lang/String;[I[I)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v0, p1

    move v4, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_5

    array-length v0, v3

    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_0

    move v2, v1

    :goto_4
    if-lt v2, v4, :cond_2

    return-void

    :cond_0
    aget-object v6, v3, v2

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    aget-object v0, p1, v2

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v2

    aput v1, p2, v2

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    const-string v3, "TccSyncDb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add result idMDFed="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v2

    aput v1, p2, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, v2

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move-object v3, v0

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)I
    .locals 11

    const/16 v1, -0x64

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v3, "add batch"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v3, "add enter"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/c/a/f;->a(I)V

    move v4, v2

    :goto_1
    if-lt v4, v7, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, v6, v5, p4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v3

    move v0, v2

    :goto_2
    array-length v4, p4

    if-lt v0, v4, :cond_2

    if-nez v3, :cond_4

    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v8, v0}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "TccSyncDb"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "add(), "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "TccSyncDb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add OperationReturnValue.TCC_ERR_DATA_INVALID2, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add OperationReturnValue.TCC_ERR_DATA_INVALID2, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    goto/16 :goto_0

    :cond_2
    :try_start_3
    aget v4, p4, v0

    sget-object v6, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/c/a/f;->b(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v5, p2, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)V

    move v0, v2

    goto/16 :goto_0
.end method

.method public final add([BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
    .locals 4

    const/4 v2, 0x1

    const-string v0, "TccSyncDb"

    const-string v1, "add one"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/f;->a(I)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "add enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/f;->b(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_2
    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add query and entity.getCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationReturnValue.TCC_ERR 4, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add OperationReturnValue.TCC_ERR 4, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "TccSyncDb"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0
.end method

.method public final del(Ljava/util/ArrayList;[I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final del([B)Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TccSyncDb"

    const-string v1, "del"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/f;->a(I)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "del enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/f;->d(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/f;->d(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_3
    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0
.end method

.method public final getCurrObject(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    iget v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/sdk/core/a/a;->a(Ljava/lang/String;I)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    if-nez v2, :cond_4

    :cond_3
    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 3 strContactId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/interfaces/i;->composeVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v2

    if-nez v2, :cond_5

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 4"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->a()V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0
.end method

.method public final getCurrObjectInfo(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_EOF"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 3, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 4, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0
.end method

.method public final getSyncDataType()Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getSyncDataType"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public final getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-object v0
.end method

.method public final hasEnoughStorageSpace(J)Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "hasEnoughStorageSpace"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isExist([B)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->isExisted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TccSyncDb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oidInputError, "

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

.method public final mdf(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)I
    .locals 11

    const/16 v1, -0x64

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v3, "mdf batch"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v3, "mdf enter"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/c/a/f;->a(I)V

    new-array v7, v6, [Ljava/lang/String;

    move v4, v2

    :goto_1
    if-lt v4, v6, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, v5, p4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->update(Ljava/util/List;[I)Z

    move-result v3

    move v0, v2

    :goto_2
    array-length v4, p4

    if-lt v0, v4, :cond_3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v8, v0}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v9, "UTF-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-interface {v3, v8}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4

    aput-object v8, v7, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "TccSyncDb"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mdf(), "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    aput-object v0, v7, v4

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "TccSyncDb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID2, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID2, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_3
    aget v4, p4, v0

    sget-object v5, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/c/a/f;->c(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0, v7, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a;->a([Ljava/lang/String;[I[I)V

    move v0, v2

    goto/16 :goto_0
.end method

.method public final mdf([B[BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
    .locals 4

    const/4 v3, 0x1

    const-string v0, "TccSyncDb"

    const-string v1, "mdf"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/c/a/f;->a(I)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "mdf enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "mdf entity == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v1, v2, :cond_4

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/c/a/f;->c(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "TccSyncDb"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v1, v2, :cond_5

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/c/a/f;->c(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    goto/16 :goto_0
.end method

.method public final seekFirst(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "seekFirst  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final seekNext()Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "seekNext  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, "TccSyncDb"

    const-string v1, "seekNext leave  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "seekNext  leave false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSyncType(Lcom/tencent/tccsync/RemoteSync$SyncType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method public final size()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "size  enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "size  false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "TccSyncDb"

    const-string v2, "size  true"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final syncFreeze()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/core/a/a;->a()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final syncInit()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "TccSyncDb"

    const-string v3, "syncInit enter"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->g:Ljava/util/List;

    iget-boolean v4, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->h:Z

    invoke-interface {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    if-nez v2, :cond_2

    const-string v1, "TccSyncDb"

    const-string v2, "syncInit false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    new-instance v2, Lcom/tencent/qqpim/sdk/core/a/a;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->d:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/tencent/qqpim/sdk/core/a/a;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;)V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->j:Lcom/tencent/qqpim/sdk/core/a/a;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    if-ne v2, v3, :cond_5

    :cond_3
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    :cond_4
    :goto_1
    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->e:I

    const-string v0, "TccSyncDb"

    const-string v2, "syncInit  true"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    if-ne v2, v3, :cond_6

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    if-ne v2, v3, :cond_4

    :cond_7
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/tccsync/a;->f:Lcom/tencent/qqpim/sdk/interfaces/i;

    goto :goto_1
.end method
