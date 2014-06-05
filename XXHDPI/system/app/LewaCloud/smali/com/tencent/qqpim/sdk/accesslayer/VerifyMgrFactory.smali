.class public Lcom/tencent/qqpim/sdk/accesslayer/VerifyMgrFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVerifyMgr(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/a/b;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/apps/a/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
