.class public Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreProcessor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalRestoreProcessor"


# instance fields
.field observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    return-void
.end method

.method private finishRestore()V
    .locals 2

    const-string v0, "LocalRestoreProcessor"

    const-string v1, "restore finish!!!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initRestore(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getBackupFilePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessBegin()V

    return-void
.end method

.method private setUserCancel(Z)V
    .locals 0

    sput-boolean p1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    return-void
.end method


# virtual methods
.method public restoreFromSDCard(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;Ljava/util/List;)V
    .locals 8

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->initRestore(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    move v4, v5

    move v3, v5

    :goto_1
    if-lt v4, v6, :cond_3

    :cond_2
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    :goto_2
    const-string v0, "LocalRestoreProcessor"

    const-string v1, "restore finish!!!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-direct {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getContactCount()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(I)I

    move-result v0

    :goto_3
    sget-boolean v7, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_8

    move v0, v2

    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v7, 0x4

    if-ne v0, v7, :cond_5

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-direct {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getSmsCount()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(I)I

    move-result v0

    goto :goto_3

    :cond_5
    const/16 v7, 0x10

    if-ne v0, v7, :cond_9

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-direct {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getCalllogCount()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(I)I

    move-result v0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0, v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public userCancel()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    return-void
.end method
