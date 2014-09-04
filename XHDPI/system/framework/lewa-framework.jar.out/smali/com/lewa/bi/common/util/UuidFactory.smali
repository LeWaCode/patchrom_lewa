.class public Lcom/lewa/bi/common/util/UuidFactory;
.super Ljava/lang/Object;
.source "UuidFactory.java"


# static fields
.field private static final MAX_TIME:J = 0x1d8fdc045400L

.field private static final MIN_TIME:J = 0x1b77400L

.field private static final TIME_DIFF:J = 0x1b21dd213814000L

.field public static final UUID_STRING_LENGTH:I = 0x24

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/lewa/bi/common/util/UuidFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/util/UuidFactory;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compare(Lcom/lewa/bi/common/data/TimeBasedId;Lcom/lewa/bi/common/data/TimeBasedId;)I
    .locals 13
    .parameter "id1"
    .parameter "id2"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 28
    if-nez p0, :cond_2

    .line 29
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    if-nez p1, :cond_3

    move v4, v6

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 34
    .local v2, uuid1:Ljava/util/UUID;
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 35
    .local v3, uuid2:Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->timestamp()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/UUID;->timestamp()J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 36
    .local v0, result:J
    cmp-long v7, v0, v11

    if-eqz v7, :cond_0

    .line 38
    cmp-long v4, v0, v11

    if-lez v4, :cond_4

    move v4, v6

    .line 39
    goto :goto_0

    :cond_4
    move v4, v5

    .line 41
    goto :goto_0
.end method

.method private static declared-synchronized createTime(J)J
    .locals 11
    .parameter "currentTimeMillis"

    .prologue
    .line 51
    const-class v4, Lcom/lewa/bi/common/util/UuidFactory;

    monitor-enter v4

    const-wide/16 v5, 0x2710

    mul-long/2addr v5, p0

    const-wide v7, 0x1b21dd213814000L

    add-long v2, v5, v7

    .line 55
    .local v2, timeMillis:J
    const/16 v5, 0x20

    shl-long v0, v2, v5

    .line 59
    .local v0, time:J
    const-wide v5, 0xffff00000000L

    and-long/2addr v5, v2

    const/16 v7, 0x10

    shr-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 63
    const-wide/16 v5, 0x1000

    const/16 v7, 0x30

    shr-long v7, v2, v7

    const-wide/16 v9, 0xfff

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 65
    monitor-exit v4

    return-wide v0
.end method

.method public static final createUuid(J)Ljava/util/UUID;
    .locals 5
    .parameter "timestamp"

    .prologue
    .line 72
    new-instance v0, Ljava/util/UUID;

    invoke-static {p0, p1}, Lcom/lewa/bi/common/util/UuidFactory;->createTime(J)J

    move-result-wide v1

    invoke-static {}, Lcom/lewa/eaio/uuid/UUIDGen;->getClockSeqAndNode()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static final getTimestamp(Lcom/lewa/bi/common/data/TimeBasedId;)J
    .locals 5
    .parameter "timeBasedId"

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 83
    .local v1, uuid:Ljava/util/UUID;
    invoke-static {v1}, Lcom/lewa/bi/common/util/UuidFactory;->getTimestamp(Ljava/util/UUID;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 86
    .end local v1           #uuid:Ljava/util/UUID;
    :goto_0
    return-wide v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/lewa/bi/common/util/UuidFactory;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 86
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static final getTimestamp(Ljava/util/UUID;)J
    .locals 4
    .parameter "uuid"

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/util/UUID;->timestamp()J

    move-result-wide v0

    const-wide v2, 0x1b21dd213814000L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static isTimeUuid(Lcom/lewa/bi/common/data/TimeBasedId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/util/UuidFactory;->isTimeUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTimeUuid(Ljava/lang/String;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_0

    const-string v5, "00000000-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ffffffff-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 108
    .local v3, uuid:Ljava/util/UUID;
    invoke-static {v3}, Lcom/lewa/bi/common/util/UuidFactory;->getTimestamp(Ljava/util/UUID;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 109
    .local v1, timestamp:J
    const-wide/32 v5, 0x1b77400

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    const-wide v5, 0x1d8fdc045400L

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 110
    .end local v1           #timestamp:J
    .end local v3           #uuid:Ljava/util/UUID;
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static isUuid(Ljava/lang/String;)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/util/UUID;
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lcom/lewa/eaio/uuid/UUID;

    invoke-direct {v0}, Lcom/lewa/eaio/uuid/UUID;-><init>()V

    .line 142
    .local v0, id:Lcom/lewa/eaio/uuid/UUID;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/lewa/eaio/uuid/UUID;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lewa/eaio/uuid/UUID;->getClockSeqAndNode()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method
