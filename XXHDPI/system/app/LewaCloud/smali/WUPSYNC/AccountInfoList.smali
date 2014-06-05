.class public final LWUPSYNC/AccountInfoList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_accountList:Ljava/util/ArrayList;


# instance fields
.field public accountList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccountInfoList;->accountList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccountInfoList;->accountList:Ljava/util/ArrayList;

    iput-object p1, p0, LWUPSYNC/AccountInfoList;->accountList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    sget-object v0, LWUPSYNC/AccountInfoList;->cache_accountList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/AccountInfoList;->cache_accountList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/AccountInfoItem;

    invoke-direct {v0}, LWUPSYNC/AccountInfoItem;-><init>()V

    sget-object v1, LWUPSYNC/AccountInfoList;->cache_accountList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/AccountInfoList;->cache_accountList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/AccountInfoList;->accountList:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/AccountInfoList;->accountList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method
