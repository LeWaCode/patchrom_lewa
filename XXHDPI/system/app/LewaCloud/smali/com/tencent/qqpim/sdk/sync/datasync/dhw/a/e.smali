.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;
.super Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private b:Ljava/util/Queue;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

.field private d:Ljava/util/List;

.field private e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private f:I

.field private g:Ljava/util/List;

.field private h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

.field private i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iput-wide v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j:J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c(I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-wide v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j:J

    return-void
.end method

.method private a(Ljava/util/List;)La/q;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a(Ljava/util/List;)La/q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;[II)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;-><init>()V

    invoke-virtual {v3, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b(I)V

    aget v0, p3, v1

    sget-object v4, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v4

    if-ne v0, v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    goto :goto_1
.end method

.method private b(La/q;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a(La/q;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SmsDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateUpdateList() e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->o()I

    move-result v0

    goto :goto_1
.end method

.method private d(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 12

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "SmsDataCtrl"

    const-string v1, "getEntityData() mAllId == null || mAllId.size() == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->d()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getEntityIdBetweenTime(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "SmsDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEntityData() allIdSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j()I

    move-result v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    sub-int v1, v3, v1

    if-lez v1, :cond_a

    const-string v1, "SmsDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getEntityData() remain = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    sub-int v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    sub-int v2, v3, v2

    if-le v2, v0, :cond_5

    :goto_2
    move v2, v0

    :goto_3
    if-gtz v2, :cond_6

    :goto_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    sub-int v0, v3, v0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    goto :goto_2

    :cond_6
    if-ge v2, v9, :cond_7

    add-int v4, v1, v2

    :goto_5
    sub-int v5, v4, v1

    const-string v0, "SmsDataCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mAllId.subList("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->queryBatch(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "SmsDataCtrl"

    const-string v4, "getEntityData read = null"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int v4, v1, v9

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "SmsDataCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getEntityData read = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SmsDataCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "illegal contact number in this query "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sub-int v0, v4, v1

    sub-int v8, v2, v0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    sub-int v2, v4, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    add-int v7, v1, v5

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(IIIILjava/lang/Object;)V

    :cond_9
    move v1, v7

    move v2, v8

    goto/16 :goto_3

    :cond_a
    const-string v0, "SmsDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEntityData() error : mCurrentReadId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    goto/16 :goto_4
.end method

.method private o()I
    .locals 9

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_1
    iget-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j:J

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v3, "SmsDataCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exeAdd() size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v3, [I

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v8, v0, v4, v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v4, v2, v5, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(Ljava/util/List;Ljava/util/List;[II)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(IIIILjava/lang/Object;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0
.end method

.method private p()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a([B)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c([B)La/q;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SmsDataCtrl"

    const-string v1, "writeBack() dlist == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b(La/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    return-void
.end method

.method public final a()[B
    .locals 6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    new-instance v1, La/q;

    invoke-direct {v1}, La/q;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v2, v1, La/q;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    new-instance v4, La/o;

    invoke-direct {v4}, La/o;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c()I

    move-result v5

    iput v5, v4, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, La/o;->b:Ljava/lang/String;

    :cond_4
    new-instance v5, La/t;

    invoke-direct {v5}, La/t;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->g()I

    move-result v0

    iput v0, v5, La/t;->a:I

    new-instance v0, La/n;

    invoke-direct {v0}, La/n;-><init>()V

    iput-object v4, v0, La/n;->a:La/o;

    invoke-virtual {v5}, La/t;->toByteArray()[B

    move-result-object v4

    iput-object v4, v0, La/n;->b:[B

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(I)[B
    .locals 4

    const-string v0, "SmsDataCtrl"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(Ljava/util/List;)La/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;-><init>()V

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->o()I

    move-result v0

    const-string v1, "SmsDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSmsInsertToDbTimeCost cost time "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final b([B)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c([B)La/q;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SmsDataCtrl"

    const-string v1, "writeBack() dlist == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public final f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->e(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->e()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->b:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->d:Ljava/util/List;

    return-void
.end method
