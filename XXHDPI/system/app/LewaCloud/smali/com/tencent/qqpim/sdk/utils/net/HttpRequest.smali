.class public Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;
.super Ljava/lang/Object;


# static fields
.field public static final HEADER_NORMAL:I = 0x0

.field public static final HEADER_SYNC:I = 0x6

.field protected static final RETRY_COUNT:I = 0x3

.field protected static final RETRY_INTERVAL:I = 0x1388


# instance fields
.field private mCurrentConnectionType:I

.field public mPostData:[B

.field public mPostDataLength:I

.field public mPostDataStart:I

.field private mRetryCount:I

.field private mRetryInterval:I

.field private mRetryToltalCount:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mCurrentConnectionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryToltalCount:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryInterval:I

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 6

    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;-><init>(Ljava/lang/String;I[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mCurrentConnectionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryToltalCount:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryInterval:I

    invoke-static {p1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HttpRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->setCurrentConnectionType(I)V

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostData:[B

    iput p4, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataStart:I

    iput p5, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    return-void
.end method


# virtual methods
.method public getCurrentConnectionType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mCurrentConnectionType:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryCount:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryInterval:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCanConnect()Z
    .locals 4

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryCount:I

    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryToltalCount:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryCount:I

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, "QQPimHttpUtil_new"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRetryCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setCurrentConnectionType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mCurrentConnectionType:I

    return-void
.end method

.method public setRetryHttp(II)V
    .locals 0

    iput p2, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryToltalCount:I

    iput p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mRetryInterval:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mUrl:Ljava/lang/String;

    return-void
.end method
