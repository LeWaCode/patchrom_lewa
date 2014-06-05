.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

.field private b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

.field private f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

.field private g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

.field private k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

.field private volatile l:Z


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->b:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->h:Z

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->i:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->i:Landroid/content/Context;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;->onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_0
    return-void
.end method

.method private c(I)Lcom/tencent/qqpim/sdk/defines/DataSyncResult;
    .locals 11

    const/16 v10, 0x36b0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(I)I

    move-result v0

    const/16 v1, 0x4650

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4e20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x59d8

    if-eq p1, v1, :cond_0

    if-ne p1, v10, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c()I

    move-result v1

    add-int/2addr p1, v1

    const/16 v1, 0x46b4

    if-ne p1, v1, :cond_1

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->h()J

    move-result-wide v4

    new-instance v6, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    invoke-direct {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;-><init>(I)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setDataType(I)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setSyncType(I)V

    invoke-virtual {v6, p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setErrCode(I)V

    invoke-virtual {v6, v2, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setUploadSize(J)V

    invoke-virtual {v6, v4, v5}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setDownloadSize(J)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientAdd(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientDel(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->d()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientModify(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientInvalid(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->g()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->b()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientTotal(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->h()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerAdd(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->j()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerDel(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->i()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerModify(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->l()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerInvalid(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->m()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerTotal(I)V

    :cond_2
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->m()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->g()I

    move-result v2

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _LocalTotalNumBeforeSync "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _LocalAddNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _LocalDelNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _LocalTotalNumAfterSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _LocalinvalidNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _addFromServer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _delFromServer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _ServerTotalNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _serverFailNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _ServerInvalidNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _addFromLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _delFromLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _ServerAddNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _ServerDelNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync_local_server_conatct_num_not_equal|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v9, v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(IIILjava/lang/String;)V

    :cond_3
    div-int/lit16 v0, p1, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    if-ne v0, v10, :cond_4

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/c/a/c;->a(I)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DhwSyncEngine"

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x75ed

    invoke-static {v1, v7, p1, v9, v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(IIIILjava/lang/String;)V

    :cond_4
    return-object v6

    :catch_0
    move-exception v1

    const-string v2, "DhwSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "work()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private j()I
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "DhwSyncEngine"

    const-string v1, "subSyncWorkReConnect retry connect"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-lt v4, v1, :cond_1

    :cond_0
    const-string v1, "DhwSyncEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subSyncWorkReConnect retry connect res:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v0, "DhwSyncEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "subSyncWorkReConnect retry connect time:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k()I

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    :cond_2
    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_4

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    const/16 v0, 0x36b0

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b(I)I

    move-result v5

    if-ltz v5, :cond_3

    move v1, v2

    move v0, v3

    :cond_3
    if-nez v1, :cond_0

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private k()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 16

    const/16 v15, 0xcb

    const/4 v14, 0x4

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a(J)V

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    const-string v1, "DhwSyncEngine"

    const-string v2, "syncData single begin"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2005

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    move-object/from16 v1, p0

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(IIILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/c;->a()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->b:Ljava/util/List;

    const/16 v3, -0xd5

    if-ne v3, v1, :cond_0

    if-nez v2, :cond_5

    :cond_0
    move v1, v12

    :goto_0
    if-nez v1, :cond_1a

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/c/a/a;->b(J)V

    :cond_1
    const/16 v7, 0x2003

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(IIILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a()I

    move-result v1

    if-nez v1, :cond_7

    move v2, v13

    :goto_2
    if-nez v2, :cond_8

    const-string v2, "DhwSyncEngine"

    const-string v3, "syncEngineWork() socket connect fail"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    move v2, v1

    move v3, v12

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    if-ne v1, v14, :cond_4

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    const/16 v4, 0xd5

    if-ne v1, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->c()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->e()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->d()I

    move-result v1

    add-int/2addr v1, v4

    if-lez v1, :cond_4

    const-string v1, "DhwSyncEngine"

    const-string v4, "processSmsUpdateTime"

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/g;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/g;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_5
    const-string v1, "DhwSyncEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "addtionProcess Update thread sms cost "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c(I)Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    move-result-object v10

    const-string v1, "DhwSyncEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "syncData single finished syncResultCode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " engineErrCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x2014

    move-object/from16 v6, p0

    move v8, v12

    move v9, v12

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(IIILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    return v12

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Ljava/util/List;)I

    move-result v1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move v2, v12

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    if-ne v1, v13, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a()I

    :cond_9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    if-nez v1, :cond_c

    move v2, v13

    :goto_6
    if-nez v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->h:Z

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->h:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b(I)I

    move-result v2

    const/16 v3, 0x3e80

    if-ne v1, v3, :cond_b

    if-nez v2, :cond_b

    const/16 v1, 0x3e80

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    move-object v2, v1

    const-string v1, "DhwSyncEngine"

    const-string v3, "DhwSyncThread t:"

    invoke-static {v1, v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x4a38

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k()I

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/Throwable;)V

    move v2, v1

    move v3, v12

    goto/16 :goto_4

    :cond_c
    move v2, v12

    goto :goto_6

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v2

    if-ne v2, v13, :cond_13

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;

    move-object v2, v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getSYNC_CONTACT_IMAGES()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Z)V

    const-string v2, "DhwSyncEngine"

    const-string v4, "dataSync syncContactBase begin"

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I

    move-result v2

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->h()V

    const-string v1, "DhwSyncEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dataSync syncContactBase res:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_10

    move v1, v13

    :goto_8
    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    const-string v2, "DhwSyncEngine"

    const-string v4, "dataSync subSyncWorkContactGroup begin"

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I

    move-result v2

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->h()V

    const-string v1, "DhwSyncEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dataSync subSyncWorkContactGroup res:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_11

    move v1, v13

    :goto_9
    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getSYNC_CONTACT_IMAGES()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    const-string v2, "DhwSyncEngine"

    const-string v3, "dataSync subSyncWorkContactPhoto begin"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I

    move-result v2

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->h()V

    const-string v1, "DhwSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataSync subSyncWorkContactPhoto res:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_12

    move v1, v13

    :goto_a
    if-nez v1, :cond_1c

    move v1, v2

    :goto_b
    const-string v2, "DhwSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataSync() res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    if-ne v2, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b()I

    :cond_f
    if-nez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(I)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->h:Z

    goto/16 :goto_7

    :cond_10
    move v1, v12

    goto/16 :goto_8

    :cond_11
    move v1, v12

    goto :goto_9

    :cond_12
    move v1, v12

    goto :goto_a

    :cond_13
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v2

    if-ne v2, v14, :cond_18

    const-string v2, "DhwSyncEngine"

    const-string v3, "dataSync syncSms begin"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    if-eqz v2, :cond_14

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V

    :cond_14
    const/16 v2, 0x32c8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    if-ne v3, v15, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;Z)I

    move-result v2

    :cond_15
    :goto_c
    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->h()V

    const-string v1, "DhwSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataSync syncSms res:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_17

    move v1, v13

    :goto_d
    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    if-eqz v1, :cond_1c

    move v1, v2

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    const/16 v4, 0xd5

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;Z)I

    move-result v2

    goto :goto_c

    :cond_17
    move v1, v12

    goto :goto_d

    :cond_18
    move v1, v12

    goto/16 :goto_b

    :cond_19
    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->h:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_1a
    const/16 v2, 0x8

    move v3, v2

    move v2, v1

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    if-ne v1, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->i:Landroid/content/Context;

    invoke-static {v14, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->clearPhoneNumberToNameCache()V

    goto/16 :goto_5

    :cond_1c
    move v1, v2

    goto/16 :goto_b
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(I)I

    move-result v0

    const-string v1, "DhwSyncEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPackageRecvAck seqNo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(II)V
    .locals 12

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->d:I

    iget v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->c:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e()I

    move-result v6

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a()[B

    move-result-object v8

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v9

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/NetTypeUtil;->getNetType()I

    move-result v10

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;Lcom/tencent/qqpim/sdk/sync/datasync/b;III[B[B[BILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DhwSyncEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSyncType() e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IIIILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(IIIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    goto :goto_0
.end method

.method public final a(IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "DhwSyncEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyObsrvStateChanged msgId=%x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg3=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput p1, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput p2, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p3, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iput-object p4, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->getDataType()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;->SMS:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;-><init>()V

    check-cast p1, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->getSelectSmsSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->getStartSmsTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->getEndSmsTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b(J)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->getSelectionArguments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "DhwSyncEngine"

    const-string v1, "request stop syncengine"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c()V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "DhwSyncEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGetStuffFrequency:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "DhwSyncEngine"

    const-string v2, "waitingGetRecvPackageAndRetry()"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v2, v3, :cond_0

    :cond_3
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v2, 0x1003

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->j()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a()I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b()Z

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i()I

    move-result v0

    goto :goto_0
.end method
