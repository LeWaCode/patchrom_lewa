.class public abstract Lcom/lewa/bi/common/data/WithSequenceIdImpl;
.super Ljava/lang/Object;
.source "WithSequenceIdImpl.java"

# interfaces
.implements Lcom/lewa/bi/common/data/WithSequenceId;
.implements Ljava/io/Serializable;


# static fields
.field private static lastId:J = 0x0L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sequenceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/lewa/bi/common/util/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->lastId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->nextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->sequenceId:J

    return-void
.end method

.method private static declared-synchronized nextId()J
    .locals 8

    .prologue
    .line 23
    const-class v3, Lcom/lewa/bi/common/data/WithSequenceIdImpl;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/lewa/bi/common/util/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    .local v0, now:J
    sget-wide v4, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->lastId:J

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 25
    sget-wide v4, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->lastId:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .line 27
    :cond_0
    sput-wide v0, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->lastId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v3

    return-wide v0

    .line 23
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getSequenceId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/lewa/bi/common/data/WithSequenceIdImpl;->sequenceId:J

    return-wide v0
.end method
