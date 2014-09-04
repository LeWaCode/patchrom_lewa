.class public Lcom/lewa/eaio/uuid/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lcom/lewa/eaio/CORBA/portable/IDLEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lewa/eaio/uuid/UUID;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lcom/lewa/eaio/CORBA/portable/IDLEntity;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6731d8c298b9715bL


# instance fields
.field public clockSeqAndNode:J

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/lewa/eaio/uuid/UUIDGen;->newTime()J

    move-result-wide v0

    invoke-static {}, Lcom/lewa/eaio/uuid/UUIDGen;->getClockSeqAndNode()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lewa/eaio/uuid/UUID;-><init>(JJ)V

    .line 61
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "time"
    .parameter "clockSeqAndNode"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    .line 71
    iput-wide p3, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/lewa/eaio/uuid/UUID;)V
    .locals 4
    .parameter "u"

    .prologue
    .line 80
    iget-wide v0, p1, Lcom/lewa/eaio/uuid/UUID;->time:J

    iget-wide v2, p1, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lewa/eaio/uuid/UUID;-><init>(JJ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 92
    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/eaio/util/lang/Hex;->parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    const/16 v2, 0x13

    const/16 v3, 0x24

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/lewa/eaio/util/lang/Hex;->parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lewa/eaio/uuid/UUID;-><init>(JJ)V

    .line 94
    return-void
.end method

.method public static nilUUID()Lcom/lewa/eaio/uuid/UUID;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 282
    new-instance v0, Lcom/lewa/eaio/uuid/UUID;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/lewa/eaio/uuid/UUID;-><init>(JJ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    .line 146
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 135
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/lewa/eaio/uuid/UUID;)I
    .locals 7
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 108
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-wide v3, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    iget-wide v5, p1, Lcom/lewa/eaio/uuid/UUID;->time:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    iget-wide v3, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    iget-wide v5, p1, Lcom/lewa/eaio/uuid/UUID;->time:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v0, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    iget-wide v3, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    iget-wide v5, p1, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    iget-wide v3, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    iget-wide v5, p1, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    move v0, v2

    .line 121
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/lewa/eaio/uuid/UUID;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/eaio/uuid/UUID;->compareTo(Lcom/lewa/eaio/uuid/UUID;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 265
    instance-of v1, p1, Lcom/lewa/eaio/uuid/UUID;

    if-nez v1, :cond_1

    .line 268
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/lewa/eaio/uuid/UUID;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/eaio/uuid/UUID;->compareTo(Lcom/lewa/eaio/uuid/UUID;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getClockSeqAndNode()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    return-wide v0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 218
    iget-wide v0, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    shr-long/2addr v0, v4

    iget-wide v2, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 4
    .parameter "a"

    .prologue
    .line 191
    move-object v0, p1

    .line 192
    .local v0, out:Ljava/lang/Appendable;
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #out:Ljava/lang/Appendable;
    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .restart local v0       #out:Ljava/lang/Appendable;
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 197
    iget-wide v1, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;S)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 198
    iget-wide v1, p0, Lcom/lewa/eaio/uuid/UUID;->time:J

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;S)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 199
    iget-wide v1, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;S)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 200
    iget-wide v1, p0, Lcom/lewa/eaio/uuid/UUID;->clockSeqAndNode:J

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lewa/eaio/uuid/UUID;->toAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuffer(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "in"

    .prologue
    .line 169
    move-object v0, p1

    .line 170
    .local v0, out:Ljava/lang/StringBuffer;
    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #out:Ljava/lang/StringBuffer;
    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    .restart local v0       #out:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lewa/eaio/uuid/UUID;->toAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method
