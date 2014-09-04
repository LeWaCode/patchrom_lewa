.class public final Llewa/laml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/NotifierManager$OnNotifyListener;,
        Llewa/laml/NotifierManager$MultiBroadcastNotifier;,
        Llewa/laml/NotifierManager$MobileDataNotifier;,
        Llewa/laml/NotifierManager$BroadcastNotifier;,
        Llewa/laml/NotifierManager$BaseNotifier;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String;

.field public static TYPE_WIFI_STATE:Ljava/lang/String;

.field private static sInstance:Llewa/laml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/laml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MobileData"

    sput-object v0, Llewa/laml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    .line 21
    const-string v0, "WifiState"

    sput-object v0, Llewa/laml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 30
    iput-object p1, p0, Llewa/laml/NotifierManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Llewa/laml/NotifierManager$BaseNotifier;
    .locals 4
    .parameter "t"
    .parameter "c"

    .prologue
    .line 35
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, Llewa/laml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Llewa/laml/NotifierManager$MobileDataNotifier;

    invoke-direct {v0, p1}, Llewa/laml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget-object v0, Llewa/laml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Llewa/laml/NotifierManager$MultiBroadcastNotifier;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    aput-object v3, v1, v2

    invoke-direct {v0, p1, v1}, Llewa/laml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Llewa/laml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Llewa/laml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Llewa/laml/NotifierManager;
    .locals 2
    .parameter "c"

    .prologue
    .line 48
    const-class v1, Llewa/laml/NotifierManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llewa/laml/NotifierManager;->sInstance:Llewa/laml/NotifierManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Llewa/laml/NotifierManager;

    invoke-direct {v0, p0}, Llewa/laml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Llewa/laml/NotifierManager;->sInstance:Llewa/laml/NotifierManager;

    .line 50
    :cond_0
    sget-object v0, Llewa/laml/NotifierManager;->sInstance:Llewa/laml/NotifierManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 4
    .parameter "type"
    .parameter "l"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/NotifierManager$BaseNotifier;

    .line 57
    .local v0, notifier:Llewa/laml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Llewa/laml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Llewa/laml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Llewa/laml/NotifierManager$BaseNotifier;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->init()V

    .line 61
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0, p2}, Llewa/laml/NotifierManager$BaseNotifier;->addListener(Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 63
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->addRef()I

    .line 64
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->addActiveRef()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    .end local v0           #notifier:Llewa/laml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "t"
    .parameter "l"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/NotifierManager$BaseNotifier;

    .line 71
    .local v0, notifier:Llewa/laml/NotifierManager$BaseNotifier;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p2}, Llewa/laml/NotifierManager$BaseNotifier;->removeListener(Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 73
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->releaseActiveRef()I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    .end local v0           #notifier:Llewa/laml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 4
    .parameter "type"
    .parameter "l"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/NotifierManager$BaseNotifier;

    .line 82
    .local v0, notifier:Llewa/laml/NotifierManager$BaseNotifier;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->releaseActiveRef()I

    .line 84
    invoke-virtual {v0, p2}, Llewa/laml/NotifierManager$BaseNotifier;->removeListener(Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 85
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->releaseRef()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->finish()V

    .line 87
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    .end local v0           #notifier:Llewa/laml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 3
    .parameter "type"
    .parameter "l"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llewa/laml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/NotifierManager$BaseNotifier;

    .line 94
    .local v0, notifier:Llewa/laml/NotifierManager$BaseNotifier;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Llewa/laml/NotifierManager$BaseNotifier;->addListener(Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 96
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->addActiveRef()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    invoke-virtual {v0}, Llewa/laml/NotifierManager$BaseNotifier;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    .end local v0           #notifier:Llewa/laml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
