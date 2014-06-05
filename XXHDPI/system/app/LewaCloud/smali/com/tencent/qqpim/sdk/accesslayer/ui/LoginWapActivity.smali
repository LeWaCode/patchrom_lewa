.class public Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->setResult(I)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->d:[B

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    const-string v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;

    invoke-direct {v3, p0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;-><init>(Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;)V

    sget-object v4, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->b:[B

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
