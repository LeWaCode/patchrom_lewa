.class public Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CHECK_ALL_CHANGES_TYPE_LIST:[I = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field private mDataChangeList:Ljava/util/ArrayList;

.field private needOperationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->CHECK_ALL_CHANGES_TYPE_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    const/16 v0, 0xca

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->needOperationType:I

    return-void
.end method

.method static synthetic access$0(I)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->isAllChangeType(I)Z

    move-result v0

    return v0
.end method

.method private static isAllChangeType(I)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->CHECK_ALL_CHANGES_TYPE_LIST:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget v4, v2, v1

    if-ne p0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDataChangeStruct(I)Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mDataType:I

    if-ne p1, v2, :cond_0

    goto :goto_0
.end method

.method public getDataChangedList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNeedOperationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->needOperationType:I

    return v0
.end method

.method public isAdded()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLogicChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->isLogicChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newStruct()Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;-><init>(Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;)V

    return-object v0
.end method

.method public pop()Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->account:Ljava/lang/String;

    return-void
.end method

.method public setNeedOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->needOperationType:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->mDataChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
