.class public Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
.super Lcom/tencent/qqpim/sdk/object/sms/MConversation;


# instance fields
.field public name:Ljava/lang/String;

.field public num:I

.field public number:Ljava/lang/String;

.field public result:I

.field public sendTime:I

.field public summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/object/sms/MConversation;-><init>()V

    iput v1, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->result:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->number:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->summary:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->sendTime:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->num:I

    return-void
.end method
