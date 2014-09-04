.class Lcom/qihoopp/framework/HttpCreater$MyHandler;
.super Landroid/os/Handler;
.source "HttpCreater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoopp/framework/HttpCreater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field callback:Lcom/qihoopp/framework/HttpLoaderCallback;

.field outerClass:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qihoopp/framework/HttpCreater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qihoopp/framework/HttpLoaderCallback;Lcom/qihoopp/framework/HttpCreater;)V
    .locals 1
    .parameter "cback"
    .parameter "httpCreater"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qihoopp/framework/HttpCreater$MyHandler;->outerClass:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p1, p0, Lcom/qihoopp/framework/HttpCreater$MyHandler;->callback:Lcom/qihoopp/framework/HttpLoaderCallback;

    .line 29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 33
    iget-object v7, p0, Lcom/qihoopp/framework/HttpCreater$MyHandler;->outerClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qihoopp/framework/HttpCreater;

    .line 35
    .local v6, theClass:Lcom/qihoopp/framework/HttpCreater;
    if-nez v6, :cond_0

    .line 36
    invoke-static {}, Lcom/qihoopp/framework/HttpCreater;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "the class is done"

    invoke-static {v7, v8}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "state"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 41
    .local v5, state:I
    const-string v7, "json"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, json:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 44
    iget-object v7, p0, Lcom/qihoopp/framework/HttpCreater$MyHandler;->callback:Lcom/qihoopp/framework/HttpLoaderCallback;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/qihoopp/framework/HttpLoaderCallback;->callback(ILorg/json/JSONObject;)V

    .line 57
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 51
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .local v4, jsonObject:Lorg/json/JSONObject;
    move-object v3, v4

    .line 55
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :goto_1
    iget-object v7, p0, Lcom/qihoopp/framework/HttpCreater$MyHandler;->callback:Lcom/qihoopp/framework/HttpLoaderCallback;

    invoke-interface {v7, v5, v3}, Lcom/qihoopp/framework/HttpLoaderCallback;->callback(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/qihoopp/framework/HttpCreater;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "JSONException"

    invoke-static {v7, v8, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
