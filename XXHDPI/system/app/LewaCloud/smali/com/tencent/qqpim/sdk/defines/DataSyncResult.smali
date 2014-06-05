.class public Lcom/tencent/qqpim/sdk/defines/DataSyncResult;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataSyncResult"


# instance fields
.field private dataType:I

.field private downloadSize:J

.field private errCode:I

.field private mClientAdd:I

.field private mClientDel:I

.field private mClientInvalid:I

.field private mClientMerge:I

.field private mClientModify:I

.field private mClientTotal:I

.field private mServerAdd:I

.field private mServerDel:I

.field private mServerInvalid:I

.field private mServerMerge:I

.field private mServerModify:I

.field private mServerTotal:I

.field private result:I

.field private syncType:I

.field private uploadSize:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->result:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->errCode:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientMerge:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientInvalid:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientTotal:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerMerge:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerInvalid:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerTotal:I

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->uploadSize:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->downloadSize:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->dataType:I

    const/16 v0, 0xca

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->syncType:I

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setResult(I)V

    return-void
.end method


# virtual methods
.method public getClientAdd()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientAdd:I

    return v0
.end method

.method public getClientDel()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientDel:I

    return v0
.end method

.method public getClientInvalid()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientInvalid:I

    return v0
.end method

.method public getClientMerge()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientMerge:I

    return v0
.end method

.method public getClientModify()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientModify:I

    return v0
.end method

.method public getClientTotal()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientTotal:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->dataType:I

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->downloadSize:J

    return-wide v0
.end method

.method public getErrCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->errCode:I

    return v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->result:I

    return v0
.end method

.method public getServerAdd()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerAdd:I

    return v0
.end method

.method public getServerDel()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerDel:I

    return v0
.end method

.method public getServerInvalid()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerInvalid:I

    return v0
.end method

.method public getServerMerge()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerMerge:I

    return v0
.end method

.method public getServerModify()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerModify:I

    return v0
.end method

.method public getServerTotal()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerTotal:I

    return v0
.end method

.method public getSyncType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->syncType:I

    return v0
.end method

.method public getUploadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->uploadSize:J

    return-wide v0
.end method

.method public printSelt()V
    .locals 3

    const-string v0, "DataSyncResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->dataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->syncType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ClientAdd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mClientModify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientModify:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mClientDel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientDel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mClientMerge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientMerge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServerAdd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServerModify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerModify:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServerDel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerDel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServerMerge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerMerge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientAdd(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientAdd:I

    return-void
.end method

.method public setClientDel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientDel:I

    return-void
.end method

.method public setClientInvalid(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientInvalid:I

    return-void
.end method

.method public setClientMerge(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientMerge:I

    return-void
.end method

.method public setClientModify(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientModify:I

    return-void
.end method

.method public setClientTotal(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mClientTotal:I

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->dataType:I

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->downloadSize:J

    return-void
.end method

.method public setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->errCode:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->result:I

    return-void
.end method

.method public setServerAdd(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerAdd:I

    return-void
.end method

.method public setServerDel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerDel:I

    return-void
.end method

.method public setServerInvalid(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerInvalid:I

    return-void
.end method

.method public setServerMerge(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerMerge:I

    return-void
.end method

.method public setServerModify(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerModify:I

    return-void
.end method

.method public setServerTotal(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->mServerTotal:I

    return-void
.end method

.method public setSyncType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->syncType:I

    return-void
.end method

.method public setUploadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->uploadSize:J

    return-void
.end method
