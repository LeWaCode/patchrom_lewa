.class public Lcom/qq/jce/wup/UniPacket;
.super Lcom/qq/jce/wup/UniAttribute;
.source "UniPacket.java"


# static fields
.field public static final UniPacketHeadSize:I = 0x4

.field static cache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field static newCache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected _package:Lcom/qq/taf/RequestPacket;

.field private oldRespIret:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 95
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 16
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 21
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "useVersion3"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 16
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->useVersion3()V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    goto :goto_0
.end method

.method private parseBufferV2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 160
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 161
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1           #h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_0
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    .line 168
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->cachedClassName:Ljava/util/HashMap;

    .line 169
    return-void
.end method

.method private parseBufferV3()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v1, v1, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 128
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 129
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 131
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    .line 134
    return-void
.end method


# virtual methods
.method public createOldRespEncode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 286
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 288
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 289
    .local v1, oldSBuffer:[B
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0           #_os:Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 290
    .restart local v0       #_os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 292
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-byte v2, v2, Lcom/qq/taf/RequestPacket;->cPacketType:B

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 293
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iRequestId:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 294
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iMessageType:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 295
    iget v2, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 296
    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 297
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 298
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2
.end method

.method public createResponse()Lcom/qq/jce/wup/UniPacket;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 269
    .local v0, packet:Lcom/qq/jce/wup/UniPacket;
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 270
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 273
    iget-object v1, v0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    iput-short v2, v1, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 274
    return-object v0
.end method

.method public decode([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x4

    .line 175
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 181
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v2, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 184
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV3()V

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    .line 188
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public decodeVersion2([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x4

    .line 142
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 148
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v2, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 151
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public decodeVersion3([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x4

    .line 102
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 108
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v2, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 110
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public encode()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 60
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-ne v4, v7, :cond_3

    .line 61
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "servantName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "funcName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_3
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 69
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 71
    :cond_4
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 72
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 75
    :cond_5
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 76
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-ne v4, v7, :cond_6

    .line 78
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    .line 83
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0           #_os:Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 84
    .restart local v0       #_os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v4, v0}, Lcom/qq/taf/RequestPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 87
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 88
    .local v1, bodys:[B
    array-length v3, v1

    .line 89
    .local v3, size:I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 90
    .local v2, buf:Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 80
    .end local v1           #bodys:[B
    .end local v2           #buf:Ljava/nio/ByteBuffer;
    .end local v3           #size:I
    :cond_6
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRespIret()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    return v0
.end method

.method public getPackageVersion()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v0, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    return v0
.end method

.method public getServantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, t:Ljava/lang/Object;,"TT;"
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put name can not startwith . , now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 1
    .parameter "_is"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 255
    return-void
.end method

.method public setFuncName(Ljava/lang/String;)V
    .locals 1
    .parameter "sFuncName"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setOldRespIret(I)V
    .locals 0
    .parameter "oldRespIret"

    .prologue
    .line 314
    iput p1, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 315
    return-void
.end method

.method public setRequestId(I)V
    .locals 1
    .parameter "iRequestId"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    .line 247
    return-void
.end method

.method public setServantName(Ljava/lang/String;)V
    .locals 1
    .parameter "servantName"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public useVersion3()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    .line 53
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 54
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 1
    .parameter "_os"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 251
    return-void
.end method
