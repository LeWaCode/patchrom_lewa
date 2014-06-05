.class public Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;
.super Ljava/lang/Object;


# instance fields
.field private dataType:I

.field private filter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

.field private syncType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->setSyncType(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->setDataType(I)V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->dataType:I

    return v0
.end method

.method public getFilter()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->filter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    return-object v0
.end method

.method public getSyncType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->syncType:I

    return v0
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->dataType:I

    return-void
.end method

.method public setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->filter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    return-void
.end method

.method public setSyncType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/InnerSyncTask;->syncType:I

    return-void
.end method
