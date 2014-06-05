.class public Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;
.super Ljava/lang/Object;


# instance fields
.field public flags:B

.field public name:Ljava/lang/String;

.field public order:I

.field public software_icon:Ljava/lang/String;

.field public software_id:Ljava/lang/String;

.field public software_name:Ljava/lang/String;

.field public software_size:J

.field public software_uid:Ljava/lang/String;

.field public software_url:Ljava/lang/String;

.field public software_verify:Ljava/lang/String;

.field public software_version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_uid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_verify:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_version:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_size:J

    iput v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->versioncode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->name:Ljava/lang/String;

    iput-byte v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->flags:B

    iput v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->order:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_icon:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SoftwareRecoverInfo;->software_url:Ljava/lang/String;

    return-void
.end method
