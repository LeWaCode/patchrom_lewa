.class public final LWUPSYNC/RestoreGroupResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_groupList:Ljava/util/ArrayList;

.field static cache_result:I


# instance fields
.field public groupList:Ljava/util/ArrayList;

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    iput p1, p0, LWUPSYNC/RestoreGroupResp;->result:I

    iput-object p2, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    sget-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/GROUPITEM;

    invoke-direct {v0}, LWUPSYNC/GROUPITEM;-><init>()V

    sget-object v1, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method
