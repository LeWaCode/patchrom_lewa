.class public Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

.field private c:Landroid/content/Context;

.field private d:Z

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput p1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput p2, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput-object p4, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method private a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;->onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method private a(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;I)V
    .locals 10

    const/4 v4, 0x0

    const/16 v1, 0x32

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    move v0, v1

    :goto_0
    move v3, v4

    move v6, v0

    move v7, v2

    :goto_1
    if-lez v6, :cond_0

    add-int v0, v3, v6

    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v8

    const-string v0, "TccDataSyncEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "delete num="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int v5, v3, v6

    sub-int v3, v7, v6

    if-le v3, v1, :cond_4

    move v0, v1

    :goto_2
    sget-object v6, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v8, v6, :cond_2

    const/16 v6, 0x2007

    sub-int v7, v2, v3

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(IIILjava/lang/Object;)V

    :cond_2
    move v6, v0

    move v7, v3

    move v3, v5

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 14

    const/4 v13, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v9, v0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v10

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    const/16 v0, 0x2005

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v1

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(IIILjava/lang/Object;)V

    if-nez v7, :cond_5

    move-object v4, v11

    :cond_3
    :goto_2
    if-nez v7, :cond_8

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    const-string v1, "TccDataSyncEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncData singleResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    new-instance v1, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    invoke-direct {v1, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;-><init>(I)V

    if-eqz v2, :cond_4

    if-nez v7, :cond_a

    :cond_4
    :goto_5
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x2014

    invoke-direct {p0, v2, v8, v8, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(IIILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->d:Z

    if-nez v1, :cond_1

    if-eq v0, v13, :cond_1

    move v9, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v0

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v1

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDao()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v4

    :cond_6
    const/16 v0, -0xd5

    if-ne v1, v0, :cond_3

    if-eqz v4, :cond_7

    const/16 v0, 0x2006

    invoke-direct {p0, v0, v8, v8, v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(IIILjava/lang/Object;)V

    invoke-interface {v4, v11, v8}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x32

    invoke-direct {p0, v4, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/contact/h;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->c()I

    const/16 v0, 0x2008

    invoke-direct {p0, v0, v8, v8, v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(IIILjava/lang/Object;)V

    :cond_7
    const/16 v0, 0xd5

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v2

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v3

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getFilter()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->isEnableFilter()Z

    move-result v1

    :goto_6
    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->convertDataTypeFromInt(I)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v2

    invoke-static {v3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->convertSyncTypeFromInt(I)Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->getSelectionArguments()Ljava/util/ArrayList;

    move-result-object v5

    if-ne v13, v2, :cond_b

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->isQueryByNums()Z

    move-result v6

    :goto_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->convertDataTypeFromInt(I)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v2

    invoke-static {v3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->convertSyncTypeFromInt(I)Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v9

    :goto_8
    const-string v2, "TccDataSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncData Throwable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v3

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setDataType(I)V

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setSyncType(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setErrCode(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerAdd(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerModify(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerDel(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientAdd(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientModify(I)V

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientDel(I)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto :goto_8

    :cond_b
    move v6, v8

    goto :goto_7

    :cond_c
    move v1, v8

    goto/16 :goto_6
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;[BIZ)Z
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->d:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->a(Ljava/lang/String;Ljava/lang/String;[BIZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->d:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;->h()V

    :cond_0
    return-void
.end method

.method public onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;->onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method
