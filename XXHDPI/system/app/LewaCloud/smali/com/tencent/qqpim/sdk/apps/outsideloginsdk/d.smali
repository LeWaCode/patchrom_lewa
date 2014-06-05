.class public final Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->e:[B

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->a:[B

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->b:[B

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->c:[B

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/d;->a:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->e:[B

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
