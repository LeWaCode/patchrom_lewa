.class public Llewa/accounts/download/PayApkDownload;
.super Ljava/lang/Object;
.source "PayApkDownload.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final MER_CODE:Ljava/lang/String; = "mer_code"

.field public static final OS_VERSION:Ljava/lang/String; = "os_version"

.field public static final PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field private static final TAG:Ljava/lang/String; = "DemoApkDownload"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$000(Llewa/accounts/download/PayApkDownload;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Llewa/accounts/download/PayApkDownload;->sendGetApkDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Llewa/accounts/download/PayApkDownload;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Llewa/accounts/download/PayApkDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Llewa/accounts/download/PayApkDownload;->downloadApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Llewa/accounts/download/PayApkDownload;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private downloadApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "strurl"
    .parameter "filename"

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, isDownloaded:Z
    :try_start_0
    new-instance v2, Llewa/accounts/download/PayNetworkManager;

    iget-object v3, p0, Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Llewa/accounts/download/PayNetworkManager;-><init>(Landroid/content/Context;)V

    .line 171
    .local v2, networkManager:Llewa/accounts/download/PayNetworkManager;
    invoke-virtual {v2, p1, p2, p3}, Llewa/accounts/download/PayNetworkManager;->urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 177
    .end local v2           #networkManager:Llewa/accounts/download/PayNetworkManager;
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendGetApkDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "merCode"
    .parameter "versionCode"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, objResp:Lorg/json/JSONObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "product"

    const-string v4, "com.qihoo360pp.qihoopay"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v3, "mer_code"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, ver:Ljava/lang/String;
    const-string v3, "os_version"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v3, "phone_type"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "version"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "channel_id"

    const-string v4, "0001"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct {p0, v0}, Llewa/accounts/download/PayApkDownload;->sendRequest(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 125
    return-object v1
.end method

.method private sendRequest(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Llewa/accounts/download/PayNetworkManager;

    iget-object v5, p0, Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Llewa/accounts/download/PayNetworkManager;-><init>(Landroid/content/Context;)V

    .line 137
    .local v3, networkManager:Llewa/accounts/download/PayNetworkManager;
    const/4 v1, 0x0

    .line 139
    .local v1, jsonResponse:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 141
    .local v4, response:Ljava/lang/String;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    const-string v5, "https://api.360pay.cn/app/merapkCheck"

    invoke-virtual {v3, p1, v5}, Llewa/accounts/download/PayNetworkManager;->sendAndWaitResponse(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .local v2, jsonResponse:Lorg/json/JSONObject;
    move-object v1, v2

    .line 151
    .end local v2           #jsonResponse:Lorg/json/JSONObject;
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 152
    const-string v5, "DemoApkDownload"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-object v1

    .line 144
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter "mer_code"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Llewa/accounts/download/PayApkDownload$1;

    invoke-direct {v1, p0, p1}, Llewa/accounts/download/PayApkDownload$1;-><init>(Llewa/accounts/download/PayApkDownload;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method

.method public identifyApkVersion(ILandroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "localVersionCode"
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v3, 0x1

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 193
    .local v0, apkPackageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 194
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 195
    .local v1, apkVersionCode:I
    const-string v4, "DemoApkDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apkVersionCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    if-ge p1, v1, :cond_0

    .line 198
    const-string v4, "DemoApkDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "identifyApkVersion correct versioncode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1           #apkVersionCode:I
    :goto_0
    return v3

    .line 202
    .restart local v1       #apkVersionCode:I
    :cond_0
    const-string v3, "DemoApkDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "identifyApkVersion versioncode compare failed corrent versioncode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; apk versioncode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1           #apkVersionCode:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
