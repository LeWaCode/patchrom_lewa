.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private volatile d:Z

.field private volatile e:I

.field private f:I

.field private g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->b:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->c:I

    return-void
.end method

.method private a(II)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a:I

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->b:I

    move v0, p1

    move v1, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;->notifyVirtualProcessMessage(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->e:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->d:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->b:I

    if-le v0, v2, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a(II)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->e:I

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    const/4 v0, 0x1

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a(II)V

    :cond_3
    :try_start_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a:I

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->b:I

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->c:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->e:I

    add-int/lit8 v4, v2, 0xa

    if-le v3, v4, :cond_4

    const/16 v0, 0x19

    move v2, v0

    :goto_2
    const/16 v0, 0x1f4

    if-le v2, v0, :cond_7

    move v0, v1

    :goto_3
    div-int/lit16 v3, v2, 0x1f4

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->sleep(J)V

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->e:I

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    add-int/lit8 v4, v4, 0xa

    if-gt v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, 0x5

    if-le v3, v4, :cond_5

    const/16 v0, 0x2710

    move v2, v0

    goto :goto_2

    :cond_5
    if-le v3, v2, :cond_6

    const/16 v0, 0x1770

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VirtualProcessThread"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->d:Z

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->f:I

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
