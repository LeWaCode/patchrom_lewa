.class public Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;
.super Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;


# instance fields
.field private endSmsTime:J

.field private queryByNums:Z

.field private selectSmsSubType:I

.field private startSmsTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;->SMS:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setDataType(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;)V

    return-void
.end method


# virtual methods
.method public getEndSmsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->endSmsTime:J

    return-wide v0
.end method

.method public getSelectSmsSubType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->selectSmsSubType:I

    return v0
.end method

.method public getStartSmsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->startSmsTime:J

    return-wide v0
.end method

.method public isQueryByNums()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->queryByNums:Z

    return v0
.end method

.method public setQueryByNums(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->queryByNums:Z

    return-void
.end method

.method public setSelectSmsSubType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->selectSmsSubType:I

    return-void
.end method

.method public setSmsTime(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->startSmsTime:J

    iput-wide p3, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->endSmsTime:J

    return-void
.end method
