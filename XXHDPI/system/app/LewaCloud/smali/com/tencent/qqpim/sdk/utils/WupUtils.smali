.class public Lcom/tencent/qqpim/sdk/utils/WupUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "WupUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InputStreamToBytes(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InputStreamToBytes(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static encrypt([B)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getResp([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getUniPacketFromDataBytes([B)Lcom/qq/jce/wup/UniPacket;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "resp"

    invoke-virtual {v1, v2, p1}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "WupUtils"

    const-string v2, "getResp resp == null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WupUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResp(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getResp([BLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getUniPacketFromDataBytes([B)Lcom/qq/jce/wup/UniPacket;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "WupUtils"

    const-string v2, "getResp resp == null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WupUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResp(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getUniAttributeFromDataBytes([B)Lcom/qq/jce/wup/UniAttribute;
    .locals 4

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUniAttributeFromDataBytes(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUniPacketFromDataBytes([B)Lcom/qq/jce/wup/UniPacket;
    .locals 1

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getUniPacketFromRawDataBytes([B)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public static getUniPacketFromInputStream(Ljava/io/InputStream;)Lcom/qq/jce/wup/UniPacket;
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->InputStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getUniPacketFromDataBytes([B)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUniPacketFromRawDataBytes([B)Lcom/qq/jce/wup/UniPacket;
    .locals 4

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUniPacketFromDataBytes(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static packRequests([B[B)[B
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    array-length v0, p0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    :goto_1
    add-int v3, v2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    new-array v3, v3, [B

    if-lez v2, :cond_1

    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-lez v0, :cond_2

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method private static unpack([BILjava/util/concurrent/atomic/AtomicInteger;)Lcom/qq/jce/wup/UniPacket;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, p0

    if-le v1, p1, :cond_0

    new-array v1, v3, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v2, v3, :cond_0

    invoke-static {p0, p1, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/FormatTransfer;->bigEndianBytes2Int([B)I

    move-result v1

    if-lez v1, :cond_0

    if-gt v1, v2, :cond_0

    new-array v0, v1, [B

    invoke-static {p0, p1, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getUniPacketFromRawDataBytes([B)Lcom/qq/jce/wup/UniPacket;

    move-result-object v0

    goto :goto_0
.end method

.method public static upPackResponses([B)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v1, v4, v3}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->unpack([BILjava/util/concurrent/atomic/AtomicInteger;)Lcom/qq/jce/wup/UniPacket;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lt v4, v2, :cond_2

    goto :goto_0
.end method
