.class public final LWUPSYNC/PhotoItem;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public luid:Ljava/lang/String;

.field public photoMd5:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    iput-object p1, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
