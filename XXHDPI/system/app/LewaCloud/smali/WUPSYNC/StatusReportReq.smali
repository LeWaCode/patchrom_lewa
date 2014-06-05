.class public final LWUPSYNC/StatusReportReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_cstat:I


# instance fields
.field public addCount:S

.field public clientBackupTime:S

.field public clientClearAddressTime:S

.field public clientOperatePersonCount:S

.field public clientOperateType:B

.field public clientRollbackTime:S

.field public cstat:I

.field public delCount:S

.field public exceptionstr:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public manufactor:Ljava/lang/String;

.field public mdfCount:S

.field public model:Ljava/lang/String;

.field public nettype:B

.field public photoTime:S

.field public retryCount:S

.field public serverAfterSyncTotalCount:S

.field public statusFlag1:S

.field public statusFlag2:S

.field public statusFlag3:S

.field public syncTime:S

.field public system:Ljava/lang/String;

.field public tccErr:I

.field public totalCount1:S

.field public totalCount2:S

.field public totalReadCount:S

.field public totalTime:S

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->imei:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/StatusReportReq;->cstat:I

    iput v1, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    iput-byte v1, p0, LWUPSYNC/StatusReportReq;->nettype:B

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->addCount:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->delCount:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    iput-byte v1, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IISSSBSSSSSSSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSSBSSSSS)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->username:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->lc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/StatusReportReq;->cstat:I

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    const/4 v1, 0x0

    iput-byte v1, p0, LWUPSYNC/StatusReportReq;->nettype:B

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->addCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->delCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    const/4 v1, 0x0

    iput-byte v1, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    iput-object p1, p0, LWUPSYNC/StatusReportReq;->username:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/StatusReportReq;->lc:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/StatusReportReq;->imei:Ljava/lang/String;

    iput p4, p0, LWUPSYNC/StatusReportReq;->cstat:I

    iput p5, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    iput-short p6, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    iput-short p7, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    iput-short p8, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    iput-byte p9, p0, LWUPSYNC/StatusReportReq;->nettype:B

    iput-short p10, p0, LWUPSYNC/StatusReportReq;->addCount:S

    iput-short p11, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    iput-short p12, p0, LWUPSYNC/StatusReportReq;->delCount:S

    iput-short p13, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    move/from16 v0, p14

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    move/from16 v0, p15

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    move/from16 v0, p16

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    move-object/from16 v0, p17

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    move/from16 v0, p21

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    move/from16 v0, p22

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    move/from16 v0, p23

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    move/from16 v0, p24

    iput-byte v0, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    move/from16 v0, p25

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    move/from16 v0, p26

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    move/from16 v0, p27

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    move/from16 v0, p28

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    move/from16 v0, p29

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->username:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->lc:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->imei:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/StatusReportReq;->cstat:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/StatusReportReq;->cstat:I

    iget v0, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    iget-byte v0, p0, LWUPSYNC/StatusReportReq;->nettype:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/StatusReportReq;->nettype:B

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->addCount:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->addCount:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->delCount:S

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->delCount:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    iget-byte v0, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->username:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->lc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->imei:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/StatusReportReq;->cstat:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/StatusReportReq;->tccErr:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->syncTime:S

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->photoTime:S

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalTime:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-byte v0, p0, LWUPSYNC/StatusReportReq;->nettype:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->addCount:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->mdfCount:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->delCount:S

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount1:S

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalCount2:S

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->totalReadCount:S

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->retryCount:S

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->manufactor:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->model:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->system:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LWUPSYNC/StatusReportReq;->exceptionstr:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag1:S

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag2:S

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->statusFlag3:S

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-byte v0, p0, LWUPSYNC/StatusReportReq;->clientOperateType:B

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientBackupTime:S

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientClearAddressTime:S

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientOperatePersonCount:S

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->clientRollbackTime:S

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/StatusReportReq;->serverAfterSyncTotalCount:S

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    return-void
.end method
