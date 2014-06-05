.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->a:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->b:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->c:I

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->d:Z

    const/16 v0, 0x190

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const-string v0, "ServerGetStuffHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setClentDealWithNo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->b:I

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const-string v0, "ServerGetStuffHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIsServerGetStuff = true"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->d:Z

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->c:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->a:I

    if-gt v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->d:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "ServerGetStuffHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNetReceiveNo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b;->c:I

    return-void
.end method
