.class public Lcom/tencent/qqpim/sdk/utils/Apn;
.super Ljava/lang/Object;


# static fields
.field public static final APN_3GNET:Ljava/lang/String; = "3gnet"

.field public static final APN_3GWAP:Ljava/lang/String; = "3gwap"

.field public static final APN_777:Ljava/lang/String; = "#777"

.field public static final APN_CMNET:Ljava/lang/String; = "cmnet"

.field public static final APN_CMWAP:Ljava/lang/String; = "cmwap"

.field public static final APN_CTNET:Ljava/lang/String; = "ctnet"

.field public static final APN_CTWAP:Ljava/lang/String; = "ctwap"

.field public static final APN_NET:Ljava/lang/String; = "Net"

.field public static final APN_UNINET:Ljava/lang/String; = "uninet"

.field public static final APN_UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final APN_UNKNOWN:Ljava/lang/String; = "N/A"

.field public static final APN_WAP:Ljava/lang/String; = "Wap"

.field public static final APN_WIFI:Ljava/lang/String; = "Wlan"

.field public static volatile IS_INIT:Z = false

.field public static M_APN_PORT:I = 0x0

.field public static M_APN_PROXY:Ljava/lang/String; = null

.field public static M_APN_TYPE:I = 0x0

.field public static M_PROXY_TYPE:B = 0x0t

.field public static M_USE_PROXY:Z = false

.field private static final PROXY_CTWAP:Ljava/lang/String; = "10.0.0.200"

.field public static final PROXY_TYPE_CM:B = 0x0t

.field public static final PROXY_TYPE_CT:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "Apn"

.field public static final TYPE_NET:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WAP:I = 0x2

.field public static final TYPE_WIFI:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PORT:I

    sput-byte v1, Lcom/tencent/qqpim/sdk/utils/Apn;->M_PROXY_TYPE:B

    sput-boolean v1, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    sput-boolean v1, Lcom/tencent/qqpim/sdk/utils/Apn;->IS_INIT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInit()V
    .locals 2

    const-class v1, Lcom/tencent/qqpim/sdk/utils/Apn;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->IS_INIT:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/Apn;->init()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->IS_INIT:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getApnName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "N/A"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "Wap"

    goto :goto_0

    :pswitch_2
    const-string v0, "Net"

    goto :goto_0

    :pswitch_3
    const-string v0, "Wlan"

    goto :goto_0

    :pswitch_4
    const-string v0, "N/A"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static init()V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "init(), networkInfo : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v0, "Apn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init(), typeName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    sput v2, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    :cond_0
    :goto_0
    const-string v2, "Apn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init(), extraInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v5, :cond_3

    const/4 v0, 0x4

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_9

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    sget v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/Apn;->isProxyMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PORT:I

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, ""

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    const-string v0, "10.0.0.200"

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    sput-byte v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_PROXY_TYPE:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Apn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    goto/16 :goto_2

    :cond_8
    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_9
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    sput-byte v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_PROXY_TYPE:B

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_TYPE:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static isProxyMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
