.class public abstract Lcom/tencent/qqpim/sdk/object/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/interfaces/IEntity;


# instance fields
.field protected _Id:Ljava/lang/String;

.field protected currentIndex:Ljava/lang/Integer;

.field protected editGroupNumberData:Z

.field protected groupIds:Ljava/util/List;

.field public values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->_Id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    goto :goto_0
.end method

.method public getGroupIds()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->groupIds:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->groupIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->groupIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->_Id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2b

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x48

    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/d;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditGroupNumberData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/object/f;->editGroupNumberData:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToFirst()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->currentIndex:Ljava/lang/Integer;

    const/4 v0, 0x1

    return v0
.end method

.method public putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public putValue(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/f;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setEditGroupNumberData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/object/f;->editGroupNumberData:Z

    return-void
.end method

.method public setGroupIds(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/f;->groupIds:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/f;->_Id:Ljava/lang/String;

    return-void
.end method
