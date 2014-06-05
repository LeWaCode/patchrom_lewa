.class public Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareIndexId;
.super Ljava/lang/Object;


# instance fields
.field public index:I

.field public softwareId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareIndexId;->index:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareIndexId;->softwareId:Ljava/lang/String;

    return-void
.end method
