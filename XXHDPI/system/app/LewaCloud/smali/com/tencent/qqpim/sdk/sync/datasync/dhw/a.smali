.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;B)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getInternalDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "acclist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->d()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/SerialzeUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccServerConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readChosedChecked(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;)V

    return-void
.end method

.method public final b()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/SerialzeUtil;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AccServerConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveList(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->b()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->c()I

    move-result v0

    return v0
.end method
