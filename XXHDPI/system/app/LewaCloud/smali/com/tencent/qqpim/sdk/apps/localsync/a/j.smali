.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/j;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    return-void
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    return-void
.end method

.method private static b(I)V
    .locals 1

    const/16 v0, 0x753b

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 8

    const/4 v2, -0x2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->a(II)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->b(I)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const-string v1, "SoftwareBackupOperator"

    const-string v3, "copyApk2SDCard begin"

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/software"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_3
    move v3, v0

    move v1, v0

    :goto_1
    if-lt v3, v4, :cond_4

    const-string v0, "SoftwareBackupOperator"

    const-string v3, "copyApk2SDCard end"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-ne v0, v2, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->b(I)V

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/apps/b/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/b/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/b/a/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v7, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupSoftware(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/software/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".apk"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    :goto_3
    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->e:Z

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0, v4}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->a(II)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;->b(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method
