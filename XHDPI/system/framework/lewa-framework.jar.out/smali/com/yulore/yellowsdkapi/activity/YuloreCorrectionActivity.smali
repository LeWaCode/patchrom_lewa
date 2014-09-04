.class public abstract Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;
.super Landroid/app/Activity;


# static fields
.field protected static final BASETAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->setUpContentView()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->findViewById()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getWebView()Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->setListener()V

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->processLogic()V

    return-void
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/yulore/yellowpageapi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->BASETAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cacheDirPath="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    new-instance v0, Lcom/yulore/yellowsdkapi/activity/a;

    invoke-direct {v0, p0}, Lcom/yulore/yellowsdkapi/activity/a;-><init>(Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/yulore/yellowsdkapi/activity/b;

    invoke-direct {v0, p0}, Lcom/yulore/yellowsdkapi/activity/b;-><init>(Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private processLogic()V
    .locals 2

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent Extra url must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "you must implement getWebView() method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->initWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract commitFailed(Ljava/lang/String;)V
.end method

.method protected abstract commitSuccess(Ljava/lang/String;)V
.end method

.method protected abstract findViewById()V
.end method

.method protected abstract getWebView()Landroid/webkit/WebView;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreCorrectionActivity;->initView()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract onPageLoadError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method protected abstract setListener()V
.end method

.method protected abstract setUpContentView()V
.end method
