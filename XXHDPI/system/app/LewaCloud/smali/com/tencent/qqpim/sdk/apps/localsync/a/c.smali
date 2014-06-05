.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/c;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    return-void
.end method

.method private static b(I)V
    .locals 1

    const/16 v0, 0x7538

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 13

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    const/4 v3, 0x0

    const/16 v4, 0x14

    const-wide/16 v5, 0x1f4

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIJI)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getAllContactsId()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    div-int/lit16 v0, v11, 0xfa

    rem-int/lit16 v12, v11, 0xfa

    const/4 v9, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v7

    :goto_1
    add-int/lit8 v10, v0, -0x1

    if-gtz v0, :cond_2

    if-lez v12, :cond_f

    const/16 v0, 0xfa

    if-gt v11, v0, :cond_9

    move-object v0, v8

    :goto_2
    check-cast v7, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    mul-int/lit16 v0, v10, 0xfa

    add-int/2addr v0, v12

    add-int/lit8 v1, v10, 0x1

    mul-int/lit16 v1, v1, 0xfa

    add-int/2addr v1, v12

    invoke-interface {v8, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v0, v7

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->e:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->a(Ljava/util/List;I)Ljava/util/LinkedList;

    move-result-object v1

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->e:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    const-string v3, "contact2.bak"

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    add-int/lit8 v5, v9, 0x14

    add-int/lit8 v6, v11, 0x14

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;II)I

    move-result v0

    const-string v1, "ContactBackupOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_7
    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_8
    add-int/2addr v9, v0

    move v0, v10

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    invoke-interface {v8, v0, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->e:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->a(Ljava/util/List;I)Ljava/util/LinkedList;

    move-result-object v1

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->e:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    const-string v3, "contact2.bak"

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    add-int/lit8 v5, v9, 0x14

    add-int/lit8 v6, v11, 0x14

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;II)I

    move-result v0

    const-string v1, "ContactBackupOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_e
    add-int/2addr v0, v9

    :goto_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;->b(I)V

    goto/16 :goto_0

    :cond_f
    move v0, v9

    goto :goto_3
.end method
