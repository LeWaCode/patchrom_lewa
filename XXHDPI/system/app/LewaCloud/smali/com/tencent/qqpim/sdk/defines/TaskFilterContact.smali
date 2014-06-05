.class public Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
.super Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;


# instance fields
.field private needContactImage:Z

.field private queryByIDs:Z

.field private queryByNums:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;->CONTACT:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setDataType(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;)V

    return-void
.end method


# virtual methods
.method public isNeedContactImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->needContactImage:Z

    return v0
.end method

.method public isQueryByIDs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->queryByIDs:Z

    return v0
.end method

.method public isQueryByNums()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->queryByNums:Z

    return v0
.end method

.method public setNeedContactImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->needContactImage:Z

    return-void
.end method

.method public setQueryByIDs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->queryByIDs:Z

    return-void
.end method

.method public setQueryByNums(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->queryByNums:Z

    return-void
.end method
