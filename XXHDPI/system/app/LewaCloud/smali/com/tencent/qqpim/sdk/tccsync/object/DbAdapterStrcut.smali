.class public Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_OP_BAKCUP_ALL:I = 0x100

.field public static final TYPE_OP_BAKCUP_CHANGED:I = 0x101

.field public static final TYPE_OP_RESTORE_ALL:I = 0x102

.field public static final TYPE_OP_RESTORE_CHANGED:I = 0x103


# instance fields
.field private adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private operationType:I

.field private selectionList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->setAdapterType(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->setOperationType(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->setSelectionList([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdapterType()Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->operationType:I

    return v0
.end method

.method public getSelectionList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->selectionList:[Ljava/lang/String;

    return-object v0
.end method

.method public setAdapterType(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->operationType:I

    return-void
.end method

.method public setSelectionList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/tccsync/object/DbAdapterStrcut;->selectionList:[Ljava/lang/String;

    return-void
.end method
