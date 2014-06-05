.class public Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataChangeList"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field private final mDataChangeList:Ljava/util/ArrayList;

.field private needOperationType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    const/16 v0, 0x100

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->needOperationType:I

    return-void
.end method

.method private isChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDataChangeStruct(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {p1, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getDataChangedList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNeedOperationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->needOperationType:I

    return v0
.end method

.method public isAdded()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLogicChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isLogicChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pop()Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    goto :goto_0
.end method

.method public remove(I)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataChangeList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remove(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "DataChangeList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remove(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->account:Ljava/lang/String;

    return-void
.end method

.method public setNeedOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->needOperationType:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toChangedDataTypes()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->isLogicChanged()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v0

    if-lez v0, :cond_3

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
