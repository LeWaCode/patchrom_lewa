.class public Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/lang/String; = "API_KEY is null,please check your code"

.field protected static final b:Ljava/lang/String; = "API_SECRET is null,please check your code"

.field private static volatile c:Lcom/yulore/yellowsdkapi/YellowPageApi;

.field private static volatile d:Lcom/yulore/yellowsdkapi/PkgDecoderApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "000000000000000"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "000000000000000"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFileDecoderApi()Lcom/yulore/yellowsdkapi/PkgDecoderApi;
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->d:Lcom/yulore/yellowsdkapi/PkgDecoderApi;

    if-nez v0, :cond_1

    const-class v1, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->d:Lcom/yulore/yellowsdkapi/PkgDecoderApi;

    if-nez v0, :cond_0

    const-string v0, "yulorepageapi"

    const-string v2, "create PkgDecoderApi instance"

    invoke-static {v0, v2}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/yulore/yellowsdkapi/impl/a;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/impl/a;-><init>()V

    sput-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->d:Lcom/yulore/yellowsdkapi/PkgDecoderApi;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->d:Lcom/yulore/yellowsdkapi/PkgDecoderApi;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createYellowPageApi(Landroid/content/Context;)Lcom/yulore/yellowsdkapi/YellowPageApi;
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->c:Lcom/yulore/yellowsdkapi/YellowPageApi;

    if-nez v0, :cond_1

    const-class v1, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->c:Lcom/yulore/yellowsdkapi/YellowPageApi;

    if-nez v0, :cond_0

    const-string v0, "yulorepageapi"

    const-string v2, "create YellowPageApi instance"

    invoke-static {v0, v2}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/yulore/yellowsdkapi/impl/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yulore/yellowsdkapi/impl/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->c:Lcom/yulore/yellowsdkapi/YellowPageApi;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->c:Lcom/yulore/yellowsdkapi/YellowPageApi;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerAK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yulorepageapi"

    const-string v1, "API_KEY is null,please check your code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "API_KEY is null,please check your code"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yulorepageapi"

    const-string v1, "API_SECRET is null,please check your code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "API_SECRET is null,please check your code"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    sput-object p1, Lcom/yulore/yellowsdkapi/util/a;->a:Ljava/lang/String;

    sput-object p2, Lcom/yulore/yellowsdkapi/util/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    const-string v0, "000000000000000"

    :goto_0
    sput-object v0, Lcom/yulore/yellowsdkapi/util/a;->u:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/util/a;->v:Ljava/lang/String;

    const-string v0, "yulorepageapi"

    const-string v1, "register apiKey success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "000000000000000"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
