.class final Lcom/yulore/yellowsdkapi/activity/b;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;


# direct methods
.method constructor <init>(Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/activity/b;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsAlert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "\u6210\u529f"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/b;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0, p3}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->commitSuccess(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/b;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0, p3}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->commitFailed(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsConfirm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsPrompt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method
