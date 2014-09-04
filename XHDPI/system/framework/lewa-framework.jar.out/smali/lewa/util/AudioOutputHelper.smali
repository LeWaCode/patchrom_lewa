.class public Llewa/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/AudioOutputHelper$DUMP_TAG;,
        Llewa/util/AudioOutputHelper$AudioOutputClient;
    }
.end annotation


# static fields
.field private static final BINDER_LEWAMUSIC:Z = false

.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final LEWA_PLAYER:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AudioOutputHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lewa.player"

    aput-object v2, v0, v1

    sput-object v0, Llewa/util/AudioOutputHelper;->LEWA_PLAYER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Landroid/util/SparseIntArray;)Ljava/lang/String;
    .locals 5
    .parameter "reader"
    .parameter "sessions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 32
    sget-object v4, Llewa/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 33
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .line 35
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 36
    .local v3, sessionId:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 37
    .local v2, pid:I
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private static collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Landroid/util/SparseIntArray;Z)Ljava/lang/String;
    .locals 9
    .parameter "reader"
    .parameter
    .parameter "sessions"
    .parameter "active"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Llewa/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Landroid/util/SparseIntArray;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    .local p1, clients:Ljava/util/List;,"Ljava/util/List<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, content:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 46
    sget-object v8, Llewa/util/AudioOutputHelper$DUMP_TAG;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 47
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2

    .line 68
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    return-object v1

    .line 49
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 50
    .local v6, sessionId:I
    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 51
    .local v5, proc:I
    if-eqz v5, :cond_0

    .line 52
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 54
    .local v7, streamType:I
    const/4 v2, 0x0

    .line 55
    .local v2, flag:Z
    if-eqz p3, :cond_4

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/AudioOutputHelper$AudioOutputClient;

    .line 57
    .local v0, c:Llewa/util/AudioOutputHelper$AudioOutputClient;
    iget v8, v0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v8, v6, :cond_3

    .line 58
    iput-boolean p3, v0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 59
    const/4 v2, 0x1

    .line 64
    .end local v0           #c:Llewa/util/AudioOutputHelper$AudioOutputClient;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_0

    .line 65
    new-instance v8, Llewa/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v8, v6, v5, v7, p3}, Llewa/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .parameter
    .parameter "context"
    .parameter "addMainProc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p0, :cond_3

    .line 75
    invoke-static {p1}, Llewa/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, clients:Ljava/util/List;,"Ljava/util/List<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    if-eqz v3, :cond_3

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .restart local v0       #actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/util/AudioOutputHelper$AudioOutputClient;

    .line 79
    .local v2, c:Llewa/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v9, v2, Llewa/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v9, :cond_0

    .line 80
    iget v7, v2, Llewa/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 81
    .local v7, pid:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 82
    .local v8, proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, v7, :cond_1

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_1

    .line 83
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v2           #c:Llewa/util/AudioOutputHelper$AudioOutputClient;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #pid:I
    .end local v8           #proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    if-eqz p2, :cond_3

    .line 90
    invoke-static {v0, p0}, Llewa/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 91
    .local v6, mainProc:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    .line 96
    .end local v0           #actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #clients:Ljava/util/List;,"Ljava/util/List<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v6           #mainProc:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local v1, actives:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return-object v1

    .end local v1           #actives:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v0       #actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    move-object v1, v0

    .restart local v1       #actives:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    goto :goto_1
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 101
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 103
    .local v7, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move-object v8, v9

    .line 123
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 106
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v7       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, p0, v11}, Llewa/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    .line 108
    .local v6, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    move-object v8, v9

    .line 109
    goto :goto_0

    .line 111
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 113
    .local v5, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 114
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_7

    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 116
    :cond_7
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move-object v8, v9

    .line 123
    goto :goto_0
.end method

.method private static getLewaMusicRunningProcess(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-object v1, Llewa/util/AudioOutputHelper;->LEWA_PLAYER:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 171
    .local v6, packageName:Ljava/lang/String;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5           #len$:I
    .end local v6           #packageName:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, actives:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p1, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v6, mainProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 131
    .local v0, active:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, colonIndex:I
    if-lez v1, :cond_0

    .line 133
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, mainName:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 135
    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0           #active:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1           #colonIndex:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5           #mainName:Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 146
    sget-boolean v4, Llewa/os/Process;->IS_SYSTEM:Z

    if-nez v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v3

    .line 149
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, runningAppProcessInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .line 154
    .local v1, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    invoke-static {v2, p0, v4}, Llewa/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 157
    .end local v1           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #runningAppProcessInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioOutputHelper"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v7, "/cache"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, dir:Ljava/io/File;
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 182
    .local v3, pid:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    .line 183
    .local v5, tid:J
    const/4 v2, 0x0

    .line 185
    .local v2, i:I
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v7, "audio_flinger_%d_%d_%d.dump"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, dumpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dumpFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v3           #pid:I
    .end local v5           #tid:J
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 188
    .restart local v0       #dir:Ljava/io/File;
    .restart local v1       #dumpFile:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v3       #pid:I
    .restart local v5       #tid:J
    :cond_1
    invoke-static {v1}, Llewa/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 189
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    return-object v4
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .locals 15
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    const/4 v5, 0x0

    .line 196
    .local v5, os:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 198
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v12, "media.audio_flinger"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 200
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 201
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 202
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 203
    .local v7, reader:Ljava/io/BufferedReader;
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 205
    .local v8, sessions:Landroid/util/SparseIntArray;
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, skipped:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 206
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 209
    sget-object v12, Llewa/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 210
    .local v10, standbyMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-result v12

    if-eqz v12, :cond_4

    .line 212
    const/4 v1, 0x0

    .line 237
    .end local v1           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    if-eqz v6, :cond_1

    .line 239
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .line 248
    .end local v6           #os:Ljava/io/FileOutputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #sessions:Landroid/util/SparseIntArray;
    .end local v9           #skipped:Ljava/lang/String;
    .end local v10           #standbyMatcher:Ljava/util/regex/Matcher;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-object v1

    .line 214
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v1       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #sessions:Landroid/util/SparseIntArray;
    .restart local v9       #skipped:Ljava/lang/String;
    .restart local v10       #standbyMatcher:Ljava/util/regex/Matcher;
    :cond_4
    :try_start_5
    sget-object v12, Llewa/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 215
    invoke-static {v7, v8}, Llewa/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Landroid/util/SparseIntArray;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v9

    .line 217
    :cond_5
    if-nez v9, :cond_8

    .line 237
    .end local v10           #standbyMatcher:Ljava/util/regex/Matcher;
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 239
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 242
    :cond_7
    :goto_4
    if-eqz v4, :cond_e

    .line 244
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .line 246
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 220
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    .restart local v10       #standbyMatcher:Ljava/util/regex/Matcher;
    :cond_8
    :try_start_8
    sget-object v12, Llewa/util/AudioOutputHelper$DUMP_TAG;->TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 221
    .local v11, trackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 222
    const/4 v12, 0x0

    invoke-static {v7, v1, v8, v12}, Llewa/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Landroid/util/SparseIntArray;Z)Ljava/lang/String;

    move-result-object v9

    .line 224
    :cond_9
    if-eqz v9, :cond_6

    .line 227
    sget-object v12, Llewa/util/AudioOutputHelper$DUMP_TAG;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 228
    .local v0, activeTrackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 229
    const/4 v12, 0x1

    invoke-static {v7, v1, v8, v12}, Llewa/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Landroid/util/SparseIntArray;Z)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-result-object v9

    .line 231
    :cond_a
    if-nez v9, :cond_0

    goto :goto_3

    .line 245
    .end local v0           #activeTrackMatcher:Ljava/util/regex/Matcher;
    .end local v10           #standbyMatcher:Ljava/util/regex/Matcher;
    .end local v11           #trackMatcher:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v12

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .line 246
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 234
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #sessions:Landroid/util/SparseIntArray;
    .end local v9           #skipped:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 235
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v12, "AudioOutputHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 237
    if-eqz v5, :cond_b

    .line 239
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 242
    :cond_b
    :goto_6
    if-eqz v3, :cond_3

    .line 244
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 245
    :catch_2
    move-exception v12

    goto :goto_2

    .line 237
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v5, :cond_c

    .line 239
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 242
    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    .line 244
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 246
    :cond_d
    :goto_9
    throw v12

    .line 240
    .end local v1           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #sessions:Landroid/util/SparseIntArray;
    .restart local v9       #skipped:Ljava/lang/String;
    .restart local v10       #standbyMatcher:Ljava/util/regex/Matcher;
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .line 245
    :catch_4
    move-exception v12

    goto :goto_1

    .line 240
    .end local v10           #standbyMatcher:Ljava/util/regex/Matcher;
    .restart local v1       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/util/AudioOutputHelper$AudioOutputClient;>;"
    :catch_5
    move-exception v12

    goto :goto_4

    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #sessions:Landroid/util/SparseIntArray;
    .end local v9           #skipped:Ljava/lang/String;
    .restart local v2       #e:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v12

    goto :goto_6

    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v13

    goto :goto_8

    .line 245
    :catch_8
    move-exception v13

    goto :goto_9

    .line 237
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 234
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #sessions:Landroid/util/SparseIntArray;
    .restart local v9       #skipped:Ljava/lang/String;
    :cond_e
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
