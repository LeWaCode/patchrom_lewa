.class public Llewa/track/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/Tracker$DispatcherCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tracker"

.field private static count:I

.field private static debug:Z

.field private static instance:Llewa/track/Tracker;

.field private static userAgentVersion:Ljava/lang/String;


# instance fields
.field private accountId:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private customVariableBuffer:Llewa/track/CustomVariableBuffer;

.field private dispatchPolicy:I

.field private dispatchRunner:Ljava/lang/Runnable;

.field private dispatcher:Llewa/track/IDispatcher;

.field private dispatcherIsBusy:Z

.field private dryRun:Z

.field private handler:Landroid/os/Handler;

.field private hitStore:Llewa/track/Hit$IHitStore;

.field private isNetConnected:Z

.field private parent:Landroid/content/Context;

.field private powerSaveMode:Z

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    new-instance v0, Llewa/track/Tracker;

    invoke-direct {v0}, Llewa/track/Tracker;-><init>()V

    sput-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    .line 15
    sput-boolean v1, Llewa/track/Tracker;->debug:Z

    .line 19
    sput v1, Llewa/track/Tracker;->count:I

    .line 24
    const-string v0, "v1"

    sput-object v0, Llewa/track/Tracker;->userAgentVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Llewa/track/Tracker;->dryRun:Z

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Llewa/track/Tracker;->sampleRate:I

    .line 25
    iput v1, p0, Llewa/track/Tracker;->dispatchPolicy:I

    .line 48
    new-instance v0, Llewa/track/Tracker$1;

    invoke-direct {v0, p0}, Llewa/track/Tracker$1;-><init>(Llewa/track/Tracker;)V

    iput-object v0, p0, Llewa/track/Tracker;->dispatchRunner:Ljava/lang/Runnable;

    .line 373
    return-void
.end method

.method public static OnEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "event_id"

    .prologue
    .line 402
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    const-string v0, "Tracker"

    const-string v1, "the event_id cannot be empty "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 407
    :cond_1
    sget-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    const-string v1, "Clicks"

    const-string v2, "clicked"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, p0, v2, v3}, Llewa/track/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    sget-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    invoke-virtual {v0}, Llewa/track/Tracker;->dispatch()Z

    goto :goto_0
.end method

.method public static OnEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "event_id"
    .parameter "custom_param_id"
    .parameter "value"

    .prologue
    .line 417
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 418
    :cond_0
    const-string v1, "Tracker"

    const-string v2, "the event_id cannot be empty "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 423
    :cond_3
    const-string v1, "Tracker"

    const-string v2, "the custom_param_id cannot be empty "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 428
    :cond_5
    const-string v1, "Tracker"

    const-string v2, "the value cannot be empty "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_6
    sget-object v1, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    const-string v2, "Clicks"

    const-string v3, "clicked"

    const/16 v4, 0x4d

    invoke-virtual {v1, v2, p0, v3, v4}, Llewa/track/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    const/4 v0, 0x2

    .line 439
    .local v0, scope:I
    sget v1, Llewa/track/Tracker;->count:I

    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    .line 440
    sget-object v1, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    sget v2, Llewa/track/Tracker;->count:I

    invoke-virtual {v1, v2, p1, p2, v0}, Llewa/track/Tracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 441
    sget v1, Llewa/track/Tracker;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Llewa/track/Tracker;->count:I

    goto :goto_0
.end method

.method public static OnPause()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "Tracker"

    const-string v1, "Pause "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public static OnResume(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 391
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "begin Resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    return-void
.end method

.method public static OnStart(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "Tracker"

    const-string v1, "get Instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    sget-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Llewa/track/Tracker;->context:Landroid/content/Context;

    .line 60
    sget-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    iget-object v0, v0, Llewa/track/Tracker;->context:Landroid/content/Context;

    invoke-static {v0}, Llewa/track/BaseData;->SetContext(Landroid/content/Context;)V

    .line 61
    sget-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    const-string v1, "LW-BI"

    sget-object v2, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    iget-object v2, v2, Llewa/track/Tracker;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Llewa/track/Tracker;->startNewSession(Ljava/lang/String;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Llewa/track/Tracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Llewa/track/Tracker;)Llewa/track/Hit$IHitStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    return-object v0
.end method

.method private cancelPendingDispatches()V
    .locals 2

    .prologue
    .line 222
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "Tracker"

    const-string v1, "cancelPendingDispatches"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/track/Tracker;->dispatchRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_1
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "accountId"
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 155
    sget-boolean v1, Llewa/track/Tracker;->debug:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "Tracker"

    const-string v2, "createEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    new-instance v0, Llewa/track/Event;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Llewa/track/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    .local v0, localEvent:Llewa/track/Event;
    iget-object v1, p0, Llewa/track/Tracker;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v0, v1}, Llewa/track/Event;->setCustomVariableBuffer(Llewa/track/CustomVariableBuffer;)V

    .line 160
    new-instance v1, Llewa/track/CustomVariableBuffer;

    invoke-direct {v1}, Llewa/track/CustomVariableBuffer;-><init>()V

    iput-object v1, p0, Llewa/track/Tracker;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    .line 161
    iget-object v1, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    invoke-interface {v1, v0}, Llewa/track/Hit$IHitStore;->putEvent(Llewa/track/Event;)V

    .line 162
    invoke-direct {p0}, Llewa/track/Tracker;->resetPowerSaveMode()V

    .line 163
    return-void
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 349
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    return v0
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Llewa/track/Tracker;->userAgentVersion:Ljava/lang/String;

    return-object v0
.end method

.method private isNetConnect()Z
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Llewa/track/Tracker;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, localNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    :cond_0
    sget-boolean v1, Llewa/track/Tracker;->debug:Z

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "Tracker"

    const-string v2, "... there was no network available"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private maybeScheduleNextDispatch()V
    .locals 4

    .prologue
    .line 192
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "Tracker"

    const-string v1, "maybeSckeduleNextDispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget v0, p0, Llewa/track/Tracker;->dispatchPolicy:I

    if-nez v0, :cond_5

    .line 196
    iget-boolean v0, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    if-eqz v0, :cond_3

    .line 197
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "Tracker"

    const-string v1, " dispatcher is busy "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/track/Tracker;->dispatchRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "Tracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 203
    :cond_3
    iget-boolean v0, p0, Llewa/track/Tracker;->isNetConnected:Z

    if-nez v0, :cond_2

    .line 204
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "Tracker"

    const-string v1, " network is unable "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/track/Tracker;->dispatchRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "Tracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_5
    iget v0, p0, Llewa/track/Tracker;->dispatchPolicy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/track/Tracker;->dispatchRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "Tracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetPowerSaveMode()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Llewa/track/Tracker;->powerSaveMode:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/track/Tracker;->powerSaveMode:Z

    .line 232
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    .line 234
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 344
    sput-boolean p0, Llewa/track/Tracker;->debug:Z

    .line 345
    return-void
.end method

.method public static setProductVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "productVersion"

    .prologue
    .line 137
    sput-object p0, Llewa/track/Tracker;->userAgentVersion:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public dispatch()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    sget-boolean v4, Llewa/track/Tracker;->debug:Z

    if-eqz v4, :cond_0

    .line 239
    const-string v4, "Tracker"

    const-string v5, "Called dispatch"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-boolean v4, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    if-eqz v4, :cond_3

    .line 241
    sget-boolean v3, Llewa/track/Tracker;->debug:Z

    if-eqz v3, :cond_1

    .line 242
    const-string v3, "Tracker"

    const-string v4, "...but dispatcher was busy"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    .line 270
    :cond_2
    :goto_0
    return v2

    .line 246
    :cond_3
    iget-object v4, p0, Llewa/track/Tracker;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 248
    .local v1, localNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 249
    :cond_4
    sget-boolean v3, Llewa/track/Tracker;->debug:Z

    if-eqz v3, :cond_5

    .line 250
    const-string v3, "Tracker"

    const-string v4, "...but there was no network available"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5
    iput-boolean v2, p0, Llewa/track/Tracker;->isNetConnected:Z

    .line 252
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    goto :goto_0

    .line 256
    :cond_6
    iget-object v4, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    invoke-interface {v4}, Llewa/track/Hit$IHitStore;->getNumStoredHits()I

    move-result v4

    if-eqz v4, :cond_8

    .line 257
    iget-object v2, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    invoke-interface {v2}, Llewa/track/Hit$IHitStore;->peekHits()[Llewa/track/Hit;

    move-result-object v0

    .line 258
    .local v0, arrayOfHit:[Llewa/track/Hit;
    iget-object v2, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    invoke-interface {v2, v0}, Llewa/track/IDispatcher;->dispatchHits([Llewa/track/Hit;)V

    .line 259
    iput-boolean v3, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    .line 260
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    .line 261
    sget-boolean v2, Llewa/track/Tracker;->debug:Z

    if-eqz v2, :cond_7

    .line 262
    const-string v2, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hits to dispatcher"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    .line 264
    goto :goto_0

    .line 267
    .end local v0           #arrayOfHit:[Llewa/track/Hit;
    :cond_8
    iput-boolean v3, p0, Llewa/track/Tracker;->powerSaveMode:Z

    .line 268
    sget-boolean v3, Llewa/track/Tracker;->debug:Z

    if-eqz v3, :cond_2

    .line 269
    const-string v3, "Tracker"

    const-string v4, "...but there was nothing to dispatch"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dispatchFinished()V
    .locals 2

    .prologue
    .line 274
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "Tracker"

    const-string v1, "func dispatchFinished ok "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    .line 277
    invoke-direct {p0}, Llewa/track/Tracker;->isNetConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/track/Tracker;->isNetConnected:Z

    .line 280
    :cond_1
    return-void
.end method

.method getDispatcher()Llewa/track/IDispatcher;
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Tracker"

    const-string v1, "getDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    return-object v0
.end method

.method getHitStore()Llewa/track/Hit$IHitStore;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Llewa/track/Tracker;->sampleRate:I

    return v0
.end method

.method public getVisitorCustomVar(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 322
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    invoke-interface {v0, p1}, Llewa/track/Hit$IHitStore;->getVisitorCustomVar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDryRun()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Llewa/track/Tracker;->dryRun:Z

    return v0
.end method

.method returnToInitialState()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Llewa/track/Tracker;

    invoke-direct {v0}, Llewa/track/Tracker;-><init>()V

    sput-object v0, Llewa/track/Tracker;->instance:Llewa/track/Tracker;

    .line 296
    return-void
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 318
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Llewa/track/Tracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .parameter "scope"

    .prologue
    .line 305
    :try_start_0
    new-instance v0, Llewa/track/CustomVariable;

    invoke-direct {v0, p1, p2, p3, p4}, Llewa/track/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 307
    .local v0, localCustomVariable:Llewa/track/CustomVariable;
    iget-object v2, p0, Llewa/track/Tracker;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Llewa/track/CustomVariableBuffer;

    invoke-direct {v2}, Llewa/track/CustomVariableBuffer;-><init>()V

    iput-object v2, p0, Llewa/track/Tracker;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    .line 309
    :cond_0
    iget-object v2, p0, Llewa/track/Tracker;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v2, v0}, Llewa/track/CustomVariableBuffer;->setCustomVariable(Llewa/track/CustomVariable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v2, 0x1

    .end local v0           #localCustomVariable:Llewa/track/CustomVariable;
    :goto_0
    return v2

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDispatchPolicy(I)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 170
    if-gez p1, :cond_0

    .line 175
    const/4 p1, 0x0

    .line 178
    :cond_0
    iget v0, p0, Llewa/track/Tracker;->dispatchPolicy:I

    .line 179
    .local v0, oldPolicy:I
    iput p1, p0, Llewa/track/Tracker;->dispatchPolicy:I

    .line 180
    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 183
    invoke-direct {p0}, Llewa/track/Tracker;->cancelPendingDispatches()V

    .line 184
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Llewa/track/Tracker;->cancelPendingDispatches()V

    .line 187
    invoke-direct {p0}, Llewa/track/Tracker;->maybeScheduleNextDispatch()V

    goto :goto_0
.end method

.method public setDispatcher(Llewa/track/IDispatcher;)Z
    .locals 2
    .parameter "dispatcher"

    .prologue
    .line 363
    iget-boolean v0, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    invoke-interface {v0}, Llewa/track/IDispatcher;->stop()V

    .line 367
    :cond_1
    iput-object p1, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    .line 368
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    new-instance v1, Llewa/track/Tracker$DispatcherCallbacks;

    invoke-direct {v1, p0}, Llewa/track/Tracker$DispatcherCallbacks;-><init>(Llewa/track/Tracker;)V

    invoke-interface {v0, v1}, Llewa/track/IDispatcher;->init(Llewa/track/IDispatcher$Callbacks;)V

    .line 369
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    iget-boolean v1, p0, Llewa/track/Tracker;->dryRun:Z

    invoke-interface {v0, v1}, Llewa/track/IDispatcher;->setDryRun(Z)V

    .line 370
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDryRun(Z)V
    .locals 1
    .parameter "dryRun"

    .prologue
    .line 353
    iput-boolean p1, p0, Llewa/track/Tracker;->dryRun:Z

    .line 354
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    invoke-interface {v0, p1}, Llewa/track/IDispatcher;->setDryRun(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public setSampleRate(I)V
    .locals 3
    .parameter "sampleRate"

    .prologue
    .line 329
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 330
    :cond_0
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (should be between 0 and 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iput p1, p0, Llewa/track/Tracker;->sampleRate:I

    .line 335
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    iget v1, p0, Llewa/track/Tracker;->sampleRate:I

    invoke-interface {v0, v1}, Llewa/track/Hit$IHitStore;->setSampleRate(I)V

    goto :goto_0
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Llewa/track/Hit$IHitStore;Llewa/track/IDispatcher;Z)V
    .locals 8
    .parameter "accountId"
    .parameter "policy"
    .parameter "context"
    .parameter "hitStore"
    .parameter "dispatcher"
    .parameter "newSession"

    .prologue
    .line 101
    new-instance v7, Llewa/track/Tracker$DispatcherCallbacks;

    invoke-direct {v7, p0}, Llewa/track/Tracker$DispatcherCallbacks;-><init>(Llewa/track/Tracker;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Llewa/track/Tracker;->start(Ljava/lang/String;ILandroid/content/Context;Llewa/track/Hit$IHitStore;Llewa/track/IDispatcher;ZLlewa/track/IDispatcher$Callbacks;)V

    .line 103
    return-void
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Llewa/track/Hit$IHitStore;Llewa/track/IDispatcher;ZLlewa/track/IDispatcher$Callbacks;)V
    .locals 2
    .parameter "accountId"
    .parameter "policy"
    .parameter "context"
    .parameter "hitStore"
    .parameter "dispatcher"
    .parameter "newSession"
    .parameter "callbacks"

    .prologue
    .line 108
    iput-object p1, p0, Llewa/track/Tracker;->accountId:Ljava/lang/String;

    .line 109
    if-nez p3, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llewa/track/Tracker;->parent:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    .line 113
    if-eqz p6, :cond_1

    .line 114
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    invoke-interface {v0}, Llewa/track/Hit$IHitStore;->startNewVisit()V

    .line 115
    :cond_1
    iput-object p5, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    .line 116
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    invoke-interface {v0, p7}, Llewa/track/IDispatcher;->init(Llewa/track/IDispatcher$Callbacks;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/track/Tracker;->dispatcherIsBusy:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/track/Tracker;->isNetConnected:Z

    .line 119
    iget-object v0, p0, Llewa/track/Tracker;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Llewa/track/Tracker;->parent:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Llewa/track/Tracker;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 122
    :cond_2
    iget-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llewa/track/Tracker;->handler:Landroid/os/Handler;

    .line 126
    :goto_0
    invoke-virtual {p0, p2}, Llewa/track/Tracker;->setDispatchPolicy(I)V

    .line 127
    return-void

    .line 125
    :cond_3
    invoke-direct {p0}, Llewa/track/Tracker;->cancelPendingDispatches()V

    goto :goto_0
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Z)V
    .locals 7
    .parameter "accountId"
    .parameter "policy"
    .parameter "context"
    .parameter "newSession"

    .prologue
    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, hitStore:Llewa/track/Hit$IHitStore;
    const/4 v5, 0x0

    .line 78
    .local v5, dispatcher:Llewa/track/IDispatcher;
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "Tracker"

    const-string v1, "start..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    if-nez p3, :cond_1

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget-object v0, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    if-nez v0, :cond_2

    .line 85
    new-instance v4, Llewa/track/HitStore;

    .end local v4           #hitStore:Llewa/track/Hit$IHitStore;
    invoke-direct {v4, p3}, Llewa/track/HitStore;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v4       #hitStore:Llewa/track/Hit$IHitStore;
    iget v0, p0, Llewa/track/Tracker;->sampleRate:I

    invoke-interface {v4, v0}, Llewa/track/Hit$IHitStore;->setSampleRate(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    if-nez v0, :cond_3

    .line 91
    new-instance v5, Llewa/track/NetworkDispatcher;

    .end local v5           #dispatcher:Llewa/track/IDispatcher;
    invoke-direct {v5}, Llewa/track/NetworkDispatcher;-><init>()V

    .line 92
    .restart local v5       #dispatcher:Llewa/track/IDispatcher;
    iget-boolean v0, p0, Llewa/track/Tracker;->dryRun:Z

    invoke-interface {v5, v0}, Llewa/track/IDispatcher;->setDryRun(Z)V

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    .line 96
    invoke-virtual/range {v0 .. v6}, Llewa/track/Tracker;->start(Ljava/lang/String;ILandroid/content/Context;Llewa/track/Hit$IHitStore;Llewa/track/IDispatcher;Z)V

    .line 97
    return-void

    .line 88
    :cond_2
    iget-object v4, p0, Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;

    goto :goto_0

    .line 94
    :cond_3
    iget-object v5, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    goto :goto_1
.end method

.method public startNewSession(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1
    .parameter "accountId"
    .parameter "policy"
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Llewa/track/Tracker;->start(Ljava/lang/String;ILandroid/content/Context;Z)V

    .line 66
    return-void
.end method

.method public startNewSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 69
    sget-boolean v0, Llewa/track/Tracker;->debug:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "Tracker"

    const-string v1, "startNewSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Llewa/track/Tracker;->startNewSession(Ljava/lang/String;ILandroid/content/Context;)V

    .line 73
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Llewa/track/Tracker;->dispatcher:Llewa/track/IDispatcher;

    invoke-interface {v0}, Llewa/track/IDispatcher;->stop()V

    .line 291
    :cond_0
    invoke-direct {p0}, Llewa/track/Tracker;->cancelPendingDispatches()V

    .line 292
    return-void
.end method

.method public stopSession()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Llewa/track/Tracker;->stop()V

    .line 284
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    if-nez p2, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iget-object v1, p0, Llewa/track/Tracker;->accountId:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Llewa/track/Tracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    return-void
.end method
