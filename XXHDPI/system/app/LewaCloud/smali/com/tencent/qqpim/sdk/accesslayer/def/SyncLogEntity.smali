.class public Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;
.super Ljava/lang/Object;


# static fields
.field public static final BACKUP:I = 0x0

.field public static final FIRST_SYNC:I = 0x3

.field public static final RECYCLE_RESTORE:I = 0x5

.field public static final RESTORE:I = 0x1

.field public static final STATE_SIM_SYNC_FAILED:I = 0x1

.field public static final STATE_SIM_SYNC_NONE:I = -0x1

.field public static final STATE_SIM_SYNC_SUCCESS:I = 0x0

.field public static final SYNC:I = 0x2

.field public static final TIME_MACHINE_ROLL:I = 0x4


# instance fields
.field private _id:I

.field private account:Ljava/lang/String;

.field private add:I

.field private client_add_num:I

.field private client_delete_num:I

.field private client_modify_num:I

.field private delete:I

.field private download:J

.field private end:J

.field private modify:I

.field private op_type:I

.field private server_add_num:I

.field private server_delete_num:I

.field private server_modify_num:I

.field private simState:I

.field private start:J

.field private succeed:I

.field private type:I

.field private upload:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->simState:I

    return-void
.end method


# virtual methods
.method public getAdd()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->add:I

    return v0
.end method

.method public getClient_add_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_add_num:I

    return v0
.end method

.method public getClient_delete_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_delete_num:I

    return v0
.end method

.method public getClient_modify_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_modify_num:I

    return v0
.end method

.method public getDelete()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->delete:I

    return v0
.end method

.method public getDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->download:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->end:J

    return-wide v0
.end method

.method public getModify()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->modify:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->op_type:I

    return v0
.end method

.method public getQq_account()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_add_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_add_num:I

    return v0
.end method

.method public getServer_delete_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_delete_num:I

    return v0
.end method

.method public getServer_modify_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_modify_num:I

    return v0
.end method

.method public getSimState()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->simState:I

    return v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->start:J

    return-wide v0
.end method

.method public getSucceed()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->succeed:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->type:I

    return v0
.end method

.method public getUpload()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->upload:J

    return-wide v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->_id:I

    return v0
.end method

.method public setAdd(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->add:I

    return-void
.end method

.method public setClient_add_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_add_num:I

    return-void
.end method

.method public setClient_delete_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_delete_num:I

    return-void
.end method

.method public setClient_modify_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->client_modify_num:I

    return-void
.end method

.method public setDelete(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->delete:I

    return-void
.end method

.method public setDownload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->download:J

    return-void
.end method

.method public setEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->end:J

    return-void
.end method

.method public setModify(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->modify:I

    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->op_type:I

    return-void
.end method

.method public setQq_account(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->account:Ljava/lang/String;

    return-void
.end method

.method public setServer_add_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_add_num:I

    return-void
.end method

.method public setServer_delete_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_delete_num:I

    return-void
.end method

.method public setServer_modify_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->server_modify_num:I

    return-void
.end method

.method public setSimState(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->simState:I

    return-void
.end method

.method public setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->start:J

    return-void
.end method

.method public setSucceed(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->succeed:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->type:I

    return-void
.end method

.method public setUpload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->upload:J

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->_id:I

    return-void
.end method
