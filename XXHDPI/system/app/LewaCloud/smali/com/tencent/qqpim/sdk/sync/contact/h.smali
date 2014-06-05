.class public abstract Lcom/tencent/qqpim/sdk/sync/contact/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/interfaces/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;
    .locals 3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c()Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IGroupDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " IGroupDao is null model is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/i;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Lcom/tencent/qqpim/sdk/interfaces/d;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/j;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
