.class public final LWUPSYNC/AccountConfigList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_accountConfigList:Ljava/util/ArrayList;


# instance fields
.field public accountConfigList:Ljava/util/ArrayList;

.field public timeReminderDays:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccountConfigList;->accountConfigList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccountConfigList;->accountConfigList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    iput-object p1, p0, LWUPSYNC/AccountConfigList;->accountConfigList:Ljava/util/ArrayList;

    iput p2, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/AccountConfigList;->cache_accountConfigList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/AccountConfigList;->cache_accountConfigList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/AccountConfigItem;

    invoke-direct {v0}, LWUPSYNC/AccountConfigItem;-><init>()V

    sget-object v1, LWUPSYNC/AccountConfigList;->cache_accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/AccountConfigList;->cache_accountConfigList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/AccountConfigList;->accountConfigList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/AccountConfigList;->accountConfigList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LWUPSYNC/AccountConfigList;->timeReminderDays:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
