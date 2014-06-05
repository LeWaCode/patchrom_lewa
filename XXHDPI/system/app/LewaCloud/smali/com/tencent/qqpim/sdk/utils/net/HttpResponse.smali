.class public Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field public mHttpResponseCode:I

.field public mResponseBody:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mHttpResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    return-void
.end method
