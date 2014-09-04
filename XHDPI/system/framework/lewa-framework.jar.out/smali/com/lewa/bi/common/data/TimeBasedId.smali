.class public abstract Lcom/lewa/bi/common/data/TimeBasedId;
.super Lcom/lewa/bi/common/data/BaseId;
.source "TimeBasedId.java"


# static fields
.field private static logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lewa/bi/common/data/TimeBasedId;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/data/TimeBasedId;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lewa/bi/common/data/BaseId;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lewa/bi/common/data/BaseId;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private final getTimestamp()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 50
    iget-wide v1, p0, Lcom/lewa/bi/common/data/TimeBasedId;->timestamp:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->timestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lewa/bi/common/data/TimeBasedId;->timestamp:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/lewa/bi/common/data/TimeBasedId;->timestamp:J

    return-wide v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/lewa/bi/common/data/TimeBasedId;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid UUID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 56
    iput-wide v4, p0, Lcom/lewa/bi/common/data/TimeBasedId;->timestamp:J

    goto :goto_0
.end method


# virtual methods
.method protected compareTimestamp(Lcom/lewa/bi/common/data/TimeBasedId;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lewa/bi/common/data/TimeBasedId;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .local p1, o:Lcom/lewa/bi/common/data/TimeBasedId;,"TT;"
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/TimeBasedId;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/lewa/bi/common/data/TimeBasedId;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p1}, Lcom/lewa/bi/common/data/TimeBasedId;->getTimestamp()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 37
    .local v0, result:J
    cmp-long v4, v0, v8

    if-gtz v4, :cond_0

    .line 39
    cmp-long v2, v0, v8

    if-nez v2, :cond_3

    move v2, v3

    .line 40
    goto :goto_0

    .line 42
    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method
