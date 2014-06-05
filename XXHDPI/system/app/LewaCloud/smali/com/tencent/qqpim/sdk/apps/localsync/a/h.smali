.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/h;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# instance fields
.field private i:Ljava/util/List;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->j:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    return-void
.end method

.method private static b(I)V
    .locals 1

    const/16 v0, 0x753a

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 15

    const/4 v10, 0x1

    const/4 v11, -0x2

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->j:I

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    iget v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->j:I

    const-wide/16 v5, 0x3e8

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIJI)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b(I)V

    :goto_0
    return v9

    :cond_1
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b(I)V

    move v9, v11

    goto :goto_0

    :cond_2
    const-string v0, "SMSBackupOperator"

    const-string v2, "beginBatchReadAndWrite"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const-string v0, "SMSBackupOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "beginBatchReadAndWrite,totalSMS="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v2, v12, 0x32

    rem-int/lit8 v0, v12, 0x32

    if-nez v0, :cond_4

    move v0, v3

    :goto_1
    add-int v13, v2, v0

    const-string v0, "SMSBackupOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "beginBatchReadAndWrite,totalPages="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v14

    move v2, v10

    move v0, v3

    :goto_2
    if-le v2, v13, :cond_5

    :cond_3
    const-string v1, "SMSBackupOperator"

    const-string v2, "end Batch Read And Write"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-ne v0, v9, :cond_a

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b(I)V

    goto :goto_0

    :cond_4
    move v0, v10

    goto :goto_1

    :cond_5
    const-string v4, "SMSBackupOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "beginBatchReadAndWrite for loop,currentPage="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->i:Ljava/util/List;

    invoke-static {v4, v2, v5}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(IILjava/util/List;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    if-eqz v5, :cond_3

    invoke-interface {v14, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)Ljava/util/LinkedList;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v0, v9

    goto :goto_3

    :cond_7
    const-string v7, "sms2.bak"

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    move-object v4, p0

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;I)I

    move-result v4

    if-ne v4, v9, :cond_8

    move v0, v9

    goto :goto_3

    :cond_8
    add-int/2addr v4, v0

    const-string v0, "SMSBackupOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "success count:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->j:I

    add-int/2addr v0, v4

    iget v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->j:I

    add-int/2addr v5, v12

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v6, v1, v0, v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->e:Z

    if-eqz v0, :cond_9

    move v0, v11

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_2

    :cond_a
    if-ne v0, v11, :cond_b

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b(I)V

    move v9, v11

    goto/16 :goto_0

    :cond_b
    invoke-static {v10}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;->b(I)V

    move v9, v0

    goto/16 :goto_0
.end method
