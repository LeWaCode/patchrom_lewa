.class public abstract Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;
.super Landroid/app/Activity;


# static fields
.field private static final BASETAG:Ljava/lang/String; = null

.field private static final CUSTOM_MENU_REGEX:Ljava/lang/String; = "[\\s\\S]*?/webapp/[\\s\\S]*?"

.field private static final EXPRESS_QUERY_REGEX:Ljava/lang/String; = "[\\s\\S]*?/webapp/kuaidi/[\\s\\S]*?"

.field private static final FEE_QUERY_REGEX:Ljava/lang/String; = "[\\s\\S]*?/webapp/recharge/[\\s\\S]*?"

.field private static final HOTLINE_DETAIL_REGEX:Ljava/lang/String; = "http://\\w*?\\.dianhua\\.cn/detail/([\\s\\S]*?)"

.field private static final MAP_REGEX:Ljava/lang/String; = "geo:[\\S]*?"

.field private static final MORE_INFO_REGEX:Ljava/lang/String; = "http://\\w*?\\.dianhua\\.cn/page\\?c=([\\s\\S]*?)"

.field private static final PHONE_REGEX:Ljava/lang/String; = "tel:[\\S]*?"


# instance fields
.field private shopId:Ljava/lang/String;

.field private yellowpageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->BASETAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->BASETAG:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 0

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->setUpContentView()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->findViewById()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getWebView()Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->setListener()V

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->processLogic()V

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

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getFilesDir()Ljava/io/File;

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

    sget-object v1, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->BASETAG:Ljava/lang/String;

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

    new-instance v0, Lcom/yulore/yellowsdkapi/activity/c;

    invoke-direct {v0, p0}, Lcom/yulore/yellowsdkapi/activity/c;-><init>(Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private processLogic()V
    .locals 2

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shopId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent Extra shopId must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "you must implement getWebView() method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->initWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->createYellowPageApi(Landroid/content/Context;)Lcom/yulore/yellowsdkapi/YellowPageApi;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->yellowpageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->yellowpageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yulore/yellowsdkapi/YellowPageApi;->getDetailWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dialPhone(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract findViewById()V
.end method

.method protected final getCorrectionWebUrl(Lcom/yulore/yellowsdkapi/YellowPageApi$ErrorCorrection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->yellowpageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/yulore/yellowsdkapi/YellowPageApi;->getCorrectionWebUrl(Ljava/lang/String;Lcom/yulore/yellowsdkapi/YellowPageApi$ErrorCorrection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getWebView()Landroid/webkit/WebView;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->initView()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract onPageLoadError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "shopId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "shopId"

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->shopId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected openMobileExplorer(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected abstract setUpContentView()V
.end method

.method protected abstract showCorrectionWindow()V
.end method

.method protected final startActivitySafely(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract startExtraActivity(Ljava/lang/String;)V
.end method

.method protected abstract startMapActivity(Ljava/lang/String;DD)V
.end method

.method protected abstract startServiceActivity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract startShopActivity(Ljava/lang/String;)V
.end method
