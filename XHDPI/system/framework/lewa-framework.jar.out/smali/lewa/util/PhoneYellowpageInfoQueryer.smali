.class public Llewa/util/PhoneYellowpageInfoQueryer;
.super Ljava/lang/Object;
.source "PhoneYellowpageInfoQueryer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;,
        Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;,
        Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhoneYellowpageInfoQuery"

.field private static final mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mPrefixPhonName:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12520"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17911"

    aput-object v2, v0, v1

    sput-object v0, Llewa/util/PhoneYellowpageInfoQueryer;->mPrefixPhonName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Llewa/util/PhoneYellowpageInfoQueryer;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Llewa/util/PhoneYellowpageInfoQueryer;->initApi()V

    .line 48
    invoke-static {p1}, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->createYellowPageApi(Landroid/content/Context;)Lcom/yulore/yellowsdkapi/YellowPageApi;

    move-result-object v0

    iput-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phone"

    .prologue
    .line 151
    move-object v1, p0

    .line 153
    .local v1, filterPhone:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 157
    .restart local p0
    :cond_1
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    sget-object v4, Llewa/util/PhoneYellowpageInfoQueryer;->mPrefixPhonName:[Ljava/lang/String;

    array-length v0, v4

    .line 165
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 167
    sget-object v4, Llewa/util/PhoneYellowpageInfoQueryer;->mPrefixPhonName:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    sget-object v4, Llewa/util/PhoneYellowpageInfoQueryer;->mPrefixPhonName:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 169
    .local v3, length:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v3           #length:I
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p0, v1

    .line 178
    goto :goto_0

    .line 165
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initApi()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer;->mContext:Landroid/content/Context;

    const-string v1, "TiJ7avywd4T8Yr7yTQmbWZ9btamDfNTk"

    const-string v2, "RmpOVFEzTTJJNVlUazRPR013TkdOaE1tWmhNV1JrWldFNE9Eaz1ZelptWW1WbU5UUTBOVEEwTURVd01qRmhNVFV3WkdZeE1tTTVPRGc0Tm1RPVpUazNZamRsWVRCak9EWmlNVEJsWkRnellUQmlNemRtTldKaE5EQXhOMl"

    invoke-static {v0, v1, v2}, Lcom/yulore/yellowsdkapi/impl/YuloreApiFactory;->registerAK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public queryPhoneInfo(Ljava/lang/String;Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;)Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    .locals 7
    .parameter "phone"
    .parameter "callback"

    .prologue
    .line 134
    invoke-static {p1}, Llewa/util/PhoneYellowpageInfoQueryer;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, filterPhone:Ljava/lang/String;
    sget-object v2, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    sget-object v2, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    .line 137
    .local v1, info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 138
    const-string v2, "PhoneYellowpageInfoQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", markNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneMarkNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {p2, v1}, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;->call(Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;)V

    .line 144
    .end local v1           #info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 143
    :cond_1
    new-instance v2, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;

    invoke-direct {v2, p0}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;-><init>(Llewa/util/PhoneYellowpageInfoQueryer;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Llewa/util/PhoneYellowpageInfoQueryer;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryPhoneInfo(Ljava/util/concurrent/Executor;Ljava/lang/String;Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;)Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    .locals 6
    .parameter "exc"
    .parameter "phone"
    .parameter "callback"

    .prologue
    .line 120
    invoke-static {p2}, Llewa/util/PhoneYellowpageInfoQueryer;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, filterPhone:Ljava/lang/String;
    sget-object v2, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Llewa/util/PhoneYellowpageInfoQueryer;->mInfoCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    .line 123
    .local v1, info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {p3, v1}, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;->call(Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;)V

    .line 129
    .end local v1           #info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 128
    :cond_1
    new-instance v2, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;

    invoke-direct {v2, p0}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;-><init>(Llewa/util/PhoneYellowpageInfoQueryer;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v2, p1, v3}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method
