.class public Lcom/qihoopp/framework/FrameworkUtil;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 17
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 30
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return-object v2

    .line 23
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 25
    .local v2, ni:Landroid/net/NetworkInfo;
    goto :goto_0

    .line 27
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FrameworkUtil"

    const-string v4, "Exception"

    invoke-static {v3, v4, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
