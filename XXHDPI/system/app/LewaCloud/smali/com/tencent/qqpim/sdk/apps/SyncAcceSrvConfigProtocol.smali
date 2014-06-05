.class public Lcom/tencent/qqpim/sdk/apps/SyncAcceSrvConfigProtocol;
.super Ljava/lang/Object;


# static fields
.field private static final FUN_NAME_SyncAcceSrvConfig:Ljava/lang/String; = "GetAccServerList"

.field private static final REQ:Ljava/lang/String; = "req"

.field private static final RESP:Ljava/lang/String; = "resp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructRequestSyncAccSrvConfig(Ljava/lang/String;ILjava/lang/String;ILWUPSYNC/AccInfo;)[B
    .locals 3

    new-instance v0, LWUPSYNC/GetAccServerConfigReq;

    invoke-direct {v0}, LWUPSYNC/GetAccServerConfigReq;-><init>()V

    invoke-static {p2}, Lcom/tencent/wscl/TextUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/GetAccServerConfigReq;->imsi:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, LWUPSYNC/GetAccServerConfigReq;->platform:I

    iput p3, v0, LWUPSYNC/GetAccServerConfigReq;->netType:I

    iput-object p4, v0, LWUPSYNC/GetAccServerConfigReq;->userInfo:LWUPSYNC/AccInfo;

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    invoke-virtual {v1, p0}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetAccServerList"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    return-object v0
.end method
