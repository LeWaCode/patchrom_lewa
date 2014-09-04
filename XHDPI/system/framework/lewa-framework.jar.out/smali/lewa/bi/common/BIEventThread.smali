.class public Llewa/bi/common/BIEventThread;
.super Ljava/lang/Thread;
.source "BIEventThread.java"


# static fields
.field private static final eventObject:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private eventID:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/bi/common/BIEventThread;->eventObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "context"
    .parameter "event_id"
    .parameter "type"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-object p1, p0, Llewa/bi/common/BIEventThread;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Llewa/bi/common/BIEventThread;->eventID:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Llewa/bi/common/BIEventThread;->label:Ljava/lang/String;

    .line 22
    iput p3, p0, Llewa/bi/common/BIEventThread;->type:I

    .line 23
    iput-object p5, p0, Llewa/bi/common/BIEventThread;->map:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 29
    :try_start_0
    sget-object v7, Llewa/bi/common/BIEventThread;->eventObject:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    invoke-static {}, Llewa/bi/BIAgent;->getBIAgent()Llewa/bi/BIAgent;

    move-result-object v0

    iget-object v1, p0, Llewa/bi/common/BIEventThread;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/bi/common/BIEventThread;->eventID:Ljava/lang/String;

    iget v3, p0, Llewa/bi/common/BIEventThread;->type:I

    iget-object v4, p0, Llewa/bi/common/BIEventThread;->label:Ljava/lang/String;

    iget-object v5, p0, Llewa/bi/common/BIEventThread;->map:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Llewa/bi/BIAgent;->saveEvent(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 31
    monitor-exit v7

    .line 35
    :goto_0
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :catch_0
    move-exception v6

    .line 33
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
