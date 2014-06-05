.class public Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field public mClientAdd:I

.field public mClientDel:I

.field public mClientModify:I

.field public mDataType:I

.field public mServerAdd:I

.field public mServerDel:I

.field public mServerModify:I

.field final synthetic this$0:Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->this$0:Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mDataType:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientAdd:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientModify:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientDel:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->setAccount(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->account:Ljava/lang/String;

    return-object v0
.end method

.method public isAdded()Z
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientAdd:I

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

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientAdd:I

    iget v1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientModify:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mClientDel:I

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

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->mDataType:I

    #calls: Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->isAllChangeType(I)Z
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList;->access$0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->isChanged()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->isAdded()Z

    move-result v0

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/NewDataChangesList$NewDataChangesStruct;->account:Ljava/lang/String;

    return-void
.end method
