.class public final Lcom/tencent/qqpim/sdk/apps/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/interfaces/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_LOGIN;->E_CLASS_INDEX_QQLoginModel:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_LOGIN;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_LOGIN;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getLoginClassName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/qqpim/sdk/utils/PimClassBuilder;->newInstanceFromString(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/f;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    :cond_0
    return-void
.end method


# virtual methods
.method public final logout()V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c()Z

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->clear()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->getSyncLogMgr()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;->deleteAllSyncLog()I

    return-void
.end method

.method public final verifyCode(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "VerifyMgr"

    const-string v1, "login():null == mLoginModel"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/f;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final verifyPimPwd(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "VerifyMgr"

    const-string v1, "login():null == mLoginModel"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/b;->a:Lcom/tencent/qqpim/sdk/interfaces/f;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/f;->b()I

    move-result v0

    goto :goto_0
.end method
