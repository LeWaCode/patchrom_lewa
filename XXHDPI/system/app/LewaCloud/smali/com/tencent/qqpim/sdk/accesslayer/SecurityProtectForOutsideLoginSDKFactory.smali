.class public Lcom/tencent/qqpim/sdk/accesslayer/SecurityProtectForOutsideLoginSDKFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityProtectProcessor(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISecurityProtectForOutsideLoginSDKProcessor;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;)V

    return-object v0
.end method
