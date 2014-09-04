.class final Lcom/yulore/yellowsdkapi/activity/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;


# direct methods
.method constructor <init>(Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/activity/a;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/a;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->onPageLoadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/a;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->onPageLoadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError failingUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/a;->a:Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->onPageLoadError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
