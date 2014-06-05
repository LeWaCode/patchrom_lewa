.class public abstract Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;
.super Ljava/lang/Object;


# instance fields
.field protected dataType:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

.field protected enableFilter:Z

.field protected selectionArguments:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->enableFilter:Z

    return-void
.end method


# virtual methods
.method public getDataType()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->dataType:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    return-object v0
.end method

.method public getSelectionArguments()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->selectionArguments:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->selectionArguments:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public isEnableFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->enableFilter:Z

    return v0
.end method

.method protected setDataType(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->dataType:Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter$DATA_TYPE;

    return-void
.end method

.method public setEnableFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->enableFilter:Z

    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->selectionArguments:[Ljava/lang/String;

    return-void
.end method
