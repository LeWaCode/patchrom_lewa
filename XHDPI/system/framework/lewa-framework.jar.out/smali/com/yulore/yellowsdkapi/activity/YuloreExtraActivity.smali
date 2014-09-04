.class public abstract Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;
.super Landroid/app/Activity;


# static fields
.field protected static final BASETAG:Ljava/lang/String; = null

.field private static final PHONE_REGEX:Ljava/lang/String; = "tel:[\\S]*?"

.field private static final TITLE_REGEX:Ljava/lang/String; = "<title>([\\s\\S]*?)</title>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->BASETAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->setUpContentView()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->findViewById()V

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->getWebView()Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->setListener()V

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->processLogic()V

    return-void
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/yulore/yellowsdkapi/activity/d;

    invoke-direct {v0, p0}, Lcom/yulore/yellowsdkapi/activity/d;-><init>(Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private processLogic()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent Extra url must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "you must implement getWebView() method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->initWebView(Landroid/webkit/WebView;)V

    const-string v0, "c="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/yellowsdkapi/util/CipherUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v0, "<title>([\\s\\S]*?)</title>"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->setTitleBarTxt(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move-object v0, v5

    goto :goto_0
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

    invoke-virtual {p0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract findViewById()V
.end method

.method protected abstract getWebView()Landroid/webkit/WebView;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->initView()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract onPageLoadError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method protected abstract onPageLoadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method protected openMobileExplorer(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected abstract setTitleBarTxt(Ljava/lang/String;)V
.end method

.method protected abstract setUpContentView()V
.end method

.method protected final startActivitySafely(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulore/yellowsdkapi/activity/YuloreExtraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
