.class public final LWUPSYNC/SMSNumCommonInfo;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public Num:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput p1, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    iput p2, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    iget v0, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/SMSNumCommonInfo;->time:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/SMSNumCommonInfo;->Num:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
