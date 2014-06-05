.class public Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;
.super Ljava/lang/Object;


# instance fields
.field public availdSize:J

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public percent()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    iget-wide v2, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method
