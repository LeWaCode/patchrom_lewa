.class public final LWUPSYNC/AccountInfoItem;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public contactNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    iput-object p1, p0, LWUPSYNC/AccountInfoItem;->accountName:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/AccountInfoItem;->accountType:Ljava/lang/String;

    iput p3, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccountInfoItem;->accountType:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/AccountInfoItem;->accountName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/AccountInfoItem;->accountType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/AccountInfoItem;->contactNum:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
