.class Lcom/lewa/eaio/uuid/UUIDGen$HardwareAddressLookup;
.super Ljava/lang/Object;
.source "UUIDGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/eaio/uuid/UUIDGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HardwareAddressLookup"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 316
    const/4 v3, 0x0

    .line 318
    .local v3, out:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 319
    .local v2, ifs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v2, :cond_1

    .line 320
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 322
    .local v1, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 323
    .local v0, hardware:[B
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v4, v0}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 334
    .end local v0           #hardware:[B
    .end local v1           #iface:Ljava/net/NetworkInterface;
    .end local v2           #ifs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :goto_0
    return-object v3

    .line 331
    :catch_0
    move-exception v4

    goto :goto_0
.end method
