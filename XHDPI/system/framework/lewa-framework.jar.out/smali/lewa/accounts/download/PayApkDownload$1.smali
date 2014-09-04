.class Llewa/accounts/download/PayApkDownload$1;
.super Ljava/lang/Object;
.source "PayApkDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/accounts/download/PayApkDownload;->checkUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/accounts/download/PayApkDownload;

.field final synthetic val$mer_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Llewa/accounts/download/PayApkDownload;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    iput-object p2, p0, Llewa/accounts/download/PayApkDownload$1;->val$mer_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 55
    const-string v5, "0"

    .line 57
    .local v5, verCode:Ljava/lang/String;
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    iget-object v7, p0, Llewa/accounts/download/PayApkDownload$1;->val$mer_code:Ljava/lang/String;

    #calls: Llewa/accounts/download/PayApkDownload;->sendGetApkDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v6, v7, v5}, Llewa/accounts/download/PayApkDownload;->access$000(Llewa/accounts/download/PayApkDownload;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 59
    .local v1, json:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 60
    .local v4, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 61
    const-string v2, ""

    .line 62
    .local v2, resultCode:Ljava/lang/String;
    const/4 v3, 0x0

    .line 64
    .local v3, resultMsg:Ljava/lang/String;
    :try_start_0
    const-string v6, "result_code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v6, "result_msg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 69
    :goto_0
    const-string v6, "0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    :try_start_1
    const-string v6, "apk_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v6, "DemoApkDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newApkdlUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v4, :cond_0

    .line 76
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    iget-object v7, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;
    invoke-static {v7}, Llewa/accounts/download/PayApkDownload;->access$100(Llewa/accounts/download/PayApkDownload;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Llewa/accounts/configure/PayConfig;->APKPATH:Ljava/lang/String;

    #calls: Llewa/accounts/download/PayApkDownload;->downloadApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v7, v4, v8}, Llewa/accounts/download/PayApkDownload;->access$200(Llewa/accounts/download/PayApkDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .end local v2           #resultCode:Ljava/lang/String;
    .end local v3           #resultMsg:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mContext:Landroid/content/Context;
    invoke-static {v8}, Llewa/accounts/download/PayApkDownload;->access$100(Llewa/accounts/download/PayApkDownload;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Llewa/accounts/configure/PayConfig;->APKPATH:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Llewa/accounts/download/PayApkDownload;->identifyApkVersion(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Llewa/accounts/download/PayApkDownload;->access$300(Llewa/accounts/download/PayApkDownload;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    :goto_2
    return-void

    .line 66
    .restart local v2       #resultCode:Ljava/lang/String;
    .restart local v3       #resultMsg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "DemoApkDownload"

    const-string v7, "JSONException"

    invoke-static {v6, v7, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 80
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v6, "DemoApkDownload"

    const-string v7, "JSONException"

    invoke-static {v6, v7, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 82
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v6, "9999"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Llewa/accounts/download/PayApkDownload;->access$300(Llewa/accounts/download/PayApkDownload;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 85
    :cond_2
    const-string v6, "DemoApkDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5f02\u5e38\u9519\u8bef\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Llewa/accounts/download/PayApkDownload;->access$300(Llewa/accounts/download/PayApkDownload;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f02\u5e38\u9519\u8bef\uff1a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    goto :goto_2

    .line 97
    .end local v2           #resultCode:Ljava/lang/String;
    .end local v3           #resultMsg:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Llewa/accounts/download/PayApkDownload$1;->this$0:Llewa/accounts/download/PayApkDownload;

    #getter for: Llewa/accounts/download/PayApkDownload;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Llewa/accounts/download/PayApkDownload;->access$300(Llewa/accounts/download/PayApkDownload;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
