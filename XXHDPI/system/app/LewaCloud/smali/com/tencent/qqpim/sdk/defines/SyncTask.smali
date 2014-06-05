.class public Lcom/tencent/qqpim/sdk/defines/SyncTask;
.super Ljava/lang/Object;


# instance fields
.field private mDao:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private mDatatype:I

.field private mFilter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

.field private mOperationType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDao()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mDao:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-object v0
.end method

.method public getDatatype()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mDatatype:I

    return v0
.end method

.method public getFilter()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mFilter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mOperationType:I

    return v0
.end method

.method public setDao(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mDao:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-void
.end method

.method public setDatatype(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mDatatype:I

    return-void
.end method

.method public setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mFilter:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTask;->mOperationType:I

    return-void
.end method
