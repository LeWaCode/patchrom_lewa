.class public Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CHECK_ALL_CHANGES_TYPE_LIST:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field private addIds:Ljava/util/List;

.field private delIds:Ljava/util/List;

.field public mAdd:I

.field public mAll:I

.field public mDel:I

.field public mFailed:I

.field public mModify:I

.field public mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->CHECK_ALL_CHANGES_TYPE_LIST:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->delIds:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->addIds:Ljava/util/List;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mModify:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mFailed:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAll:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method private static isAllChangeType(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->CHECK_ALL_CHANGES_TYPE_LIST:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAddIds()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->addIds:Ljava/util/List;

    return-object v0
.end method

.method public getDelIds()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->delIds:Ljava/util/List;

    return-object v0
.end method

.method public isAdded()Z
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    iget v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mModify:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLogicChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isAllChangeType(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isChanged()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->isAdded()Z

    move-result v0

    goto :goto_0
.end method

.method public restData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mModify:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mFailed:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAll:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->account:Ljava/lang/String;

    return-void
.end method

.method public setAddIds(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->addIds:Ljava/util/List;

    return-void
.end method

.method public setDelIds(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->delIds:Ljava/util/List;

    return-void
.end method
