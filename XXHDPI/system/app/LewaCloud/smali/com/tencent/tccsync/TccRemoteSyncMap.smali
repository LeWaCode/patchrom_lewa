.class public Lcom/tencent/tccsync/TccRemoteSyncMap;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tencent/tccsync/SoTool;->getLIB_Name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/LibraryLoadUtil;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastMapInfo(Ljava/lang/String;Lcom/tencent/tccsync/TccSyncMapInfo;)Z
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tccsync/TccRemoteSyncMap;->getMapInfo(Ljava/lang/String;Lcom/tencent/tccsync/TccSyncMapInfo;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "TccRemoteSyncMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native getMapInfo(Ljava/lang/String;Lcom/tencent/tccsync/TccSyncMapInfo;)I
.end method
