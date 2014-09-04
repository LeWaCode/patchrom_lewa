.class Llewa/track/NetworkDispatcher;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Llewa/track/IDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/NetworkDispatcher$1;,
        Llewa/track/NetworkDispatcher$DispatcherThread;
    }
.end annotation


# static fields
.field private static final LEWA_ANALYTICS_HOST_NAME:Ljava/lang/String; = "bi.lewatek.com"

.field private static final LEWA_ANALYTICS_HOST_PORT:I = 0x50

.field private static final MAX_EVENTS_PER_PIPELINE:I = 0x1e

.field private static final MAX_POST_LENGTH:I = 0x2000

.field private static final MAX_SEQUENTIAL_REQUESTS:I = 0x5

.field private static final MIN_RETRY_INTERVAL:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "Tracker"

.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)"

.field public static iFlagTag:Z

.field private static final lewaAnalyticsHost:Lorg/apache/http/HttpHost;


# instance fields
.field private dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

.field private dryRun:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "bi.lewatek.com"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/track/NetworkDispatcher;->lewaAnalyticsHost:Lorg/apache/http/HttpHost;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Llewa/track/NetworkDispatcher;->iFlagTag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "Tracker"

    const-string v1, "1.4.2"

    invoke-direct {p0, v0, v1}, Llewa/track/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 36
    const-string v0, "bi.lewatek.com"

    const/16 v1, 0x50

    invoke-direct {p0, p1, p2, v0, v1}, Llewa/track/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramString3"
    .parameter "paramInt"

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v4, p0, Llewa/track/NetworkDispatcher;->dryRun:Z

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 42
    .local v0, localLocale:Ljava/util/Locale;
    const-string v2, "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)"

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v1, 0x1

    aput-object p2, v3, v1

    const/4 v1, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/track/NetworkDispatcher;->userAgent:Ljava/lang/String;

    .line 53
    return-void

    .line 42
    :cond_0
    const-string v1, "en"

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method static synthetic access$200()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Llewa/track/NetworkDispatcher;->lewaAnalyticsHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method


# virtual methods
.method public dispatchHits([Llewa/track/Hit;)V
    .locals 1
    .parameter "paramArrayOfHit"

    .prologue
    .line 71
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0, p1}, Llewa/track/NetworkDispatcher$DispatcherThread;->dispatchHits([Llewa/track/Hit;)V

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public init(Llewa/track/IDispatcher$Callbacks;)V
    .locals 3
    .parameter "paramCallbacks"

    .prologue
    .line 56
    invoke-virtual {p0}, Llewa/track/NetworkDispatcher;->stop()V

    .line 57
    new-instance v0, Llewa/track/NetworkDispatcher$DispatcherThread;

    iget-object v1, p0, Llewa/track/NetworkDispatcher;->userAgent:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Llewa/track/NetworkDispatcher$DispatcherThread;-><init>(Llewa/track/IDispatcher$Callbacks;Ljava/lang/String;Llewa/track/NetworkDispatcher;Llewa/track/NetworkDispatcher$1;)V

    iput-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    .line 59
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Llewa/track/NetworkDispatcher$DispatcherThread;->start()V

    .line 60
    return-void
.end method

.method public init(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Llewa/track/HitStore;)V
    .locals 6
    .parameter "paramCallbacks"
    .parameter "paramPipelinedRequester"
    .parameter "paramHitStore"

    .prologue
    .line 64
    invoke-virtual {p0}, Llewa/track/NetworkDispatcher;->stop()V

    .line 65
    new-instance v0, Llewa/track/NetworkDispatcher$DispatcherThread;

    iget-object v3, p0, Llewa/track/NetworkDispatcher;->userAgent:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Llewa/track/NetworkDispatcher$DispatcherThread;-><init>(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Ljava/lang/String;Llewa/track/NetworkDispatcher;Llewa/track/NetworkDispatcher$1;)V

    iput-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    .line 67
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Llewa/track/NetworkDispatcher$DispatcherThread;->start()V

    .line 68
    return-void
.end method

.method public isDryRun()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Llewa/track/NetworkDispatcher;->dryRun:Z

    return v0
.end method

.method public setDryRun(Z)V
    .locals 0
    .parameter "paramBoolean"

    .prologue
    .line 77
    iput-boolean p1, p0, Llewa/track/NetworkDispatcher;->dryRun:Z

    .line 78
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Llewa/track/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Llewa/track/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    .line 96
    :cond_0
    return-void
.end method

.method waitForThreadLooper()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Llewa/track/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    .line 86
    :goto_0
    iget-object v0, p0, Llewa/track/NetworkDispatcher;->dispatcherThread:Llewa/track/NetworkDispatcher$DispatcherThread;

    iget-object v0, v0, Llewa/track/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method
