.class public Lcom/lewa/cloud/manager/CloudManagerFactory;
.super Ljava/lang/Object;
.source "CloudManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getCloudManager(Landroid/content/Context;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    sget v1, Lcom/lewa/cloud/CloudApp;->mSDKVersion:I

    .line 24
    .local v1, sdkVersion:I
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager;

    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-direct {v0, v2}, Lcom/lewa/cloud/manager/TencentCloudManager;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, cm:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    return-object v0
.end method
