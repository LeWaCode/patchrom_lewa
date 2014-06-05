.class public Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;
.super Ljava/lang/Object;


# instance fields
.field private result:I

.field private returnData:Ljava/util/List;

.field private timeStamp:I

.field private totalSMSNum:I

.field private totalSessionNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->result:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->timeStamp:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSMSNum:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSessionNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->returnData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->result:I

    return v0
.end method

.method public getReturnData()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->returnData:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->timeStamp:I

    return v0
.end method

.method public getTotalSMSNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSMSNum:I

    return v0
.end method

.method public getTotalSessionNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSessionNum:I

    return v0
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->result:I

    return-void
.end method

.method public setReturnData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->returnData:Ljava/util/List;

    return-void
.end method

.method public setTimeStamp(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->timeStamp:I

    return-void
.end method

.method public setTotalSMSNum(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSMSNum:I

    return-void
.end method

.method public setTotalSessionNum(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->totalSessionNum:I

    return-void
.end method
