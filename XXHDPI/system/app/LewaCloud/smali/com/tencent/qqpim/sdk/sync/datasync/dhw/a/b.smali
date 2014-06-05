.class public abstract Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a:[B

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->b:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->d:Z

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->g:I

    const-string v0, "DhwDataCtrl"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(IIIILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;->a(IIIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(II[BLandroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a:[B

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->b:I

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->c:I

    iput-object p4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->e:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

    return-void
.end method

.method protected final a(La/q;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, La/q;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a:[B

    invoke-static {v1, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes lenth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOpType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    iput-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->d:Z

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->d:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->d:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xd5 -> :sswitch_1
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final c([B)La/q;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a:[B

    invoke-static {p1, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v1, La/q;

    invoke-direct {v1}, La/q;-><init>()V

    invoke-virtual {v1, v2}, La/q;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "byte2DataList() error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method protected final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->g:I

    return-void
.end method

.method public f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->c:I

    return v0
.end method

.method protected final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->b:I

    return v0
.end method

.method protected final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->d:Z

    return v0
.end method

.method protected final l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final m()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a:[B

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->g:I

    return v0
.end method
