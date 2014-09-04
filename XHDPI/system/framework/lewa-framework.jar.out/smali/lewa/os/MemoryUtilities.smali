.class public Llewa/os/MemoryUtilities;
.super Ljava/lang/Object;
.source "MemoryUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/os/MemoryUtilities$Apps2Keep;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MB:I = 0x100000

.field public static final MEMORY_FREE_MODE:I = 0x0

.field public static final MEMORY_TOTAL_MODE:I = 0x1

.field private static final MEM_EXCLUDE_SERVER:Z = true

.field private static MINI_UID_TO_KILL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MemoryUtilities"

.field private static final sKilledPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProtectedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProtectedPackagesActive:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const/16 v2, 0x3e9

    sput v2, Llewa/os/MemoryUtilities;->MINI_UID_TO_KILL:I

    .line 37
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    .line 38
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    .line 39
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    .line 253
    new-instance v2, Llewa/os/MemoryUtilities$Apps2Keep;

    invoke-direct {v2}, Llewa/os/MemoryUtilities$Apps2Keep;-><init>()V

    .line 254
    sget-object v2, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, pkg:Ljava/lang/String;
    const-string v2, "yjjxwx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    .end local v1           #pkg:Ljava/lang/String;
    :cond_0
    sget-object v2, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    .restart local v1       #pkg:Ljava/lang/String;
    const-string v2, "yjjxwx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kill: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v1           #pkg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method public static addProtectedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 61
    sget-object v0, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public static getBackgroundProcessMemory(Landroid/content/Context;)J
    .locals 7
    .parameter "mContext"

    .prologue
    .line 149
    const-wide/16 v1, 0x0

    .line 151
    .local v1, memBg:J
    :try_start_0
    invoke-static {p0}, Llewa/os/RunningState;->getInstance(Landroid/content/Context;)Llewa/os/RunningState;

    move-result-object v3

    .line 152
    .local v3, runningState:Llewa/os/RunningState;
    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v3}, Llewa/os/RunningState;->updateNow()V

    .line 154
    invoke-virtual {v3}, Llewa/os/RunningState;->waitForData()V

    .line 155
    iget-wide v1, v3, Llewa/os/RunningState;->mBackgroundProcessMemory:J

    .line 157
    :cond_0
    const-string v4, "MemoryUtilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backgroundProcessValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v3           #runningState:Llewa/os/RunningState;
    :goto_0
    return-wide v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MemoryUtilities"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFreeMemory(Landroid/content/Context;)J
    .locals 2
    .parameter "mContext"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {v0, p0}, Llewa/os/MemoryUtilities;->readAvailMem(ILandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 2
    .parameter "mContext"

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {v0, p0}, Llewa/os/MemoryUtilities;->readAvailMem(ILandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isExtremelyProtectedProcess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 52
    sget-object v0, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isProtected(Ljava/util/Collection;Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 1
    .parameter
    .parameter "processName"
    .parameter "running"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, whiteList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Llewa/os/MemoryUtilities;->isProtectedProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Llewa/os/MemoryUtilities;->isExtremelyProtectedProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProtectedProcess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 48
    sget-object v0, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static killProcess(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter "packageName"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, whiteList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Llewa/os/MemoryUtilities;->killProcess(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v0

    return v0
.end method

.method public static killProcess(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4
    .parameter
    .parameter "packageName"
    .parameter "context"
    .parameter "runningAppProcessInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, whiteList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Llewa/os/MemoryUtilities;->refreshProtectPkgNames(Landroid/content/Context;)V

    .line 232
    invoke-static {p0, p1, p3}, Llewa/os/MemoryUtilities;->isProtected(Ljava/util/Collection;Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 235
    .local v0, am:Landroid/app/ActivityManager;
    sget-object v1, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string v1, "MemoryUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string v1, "MemoryUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x1

    .line 243
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static killProcesses(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Llewa/os/MemoryUtilities;->killProcesses(Ljava/util/Collection;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static killProcesses(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v0, p1}, Llewa/os/MemoryUtilities;->killProcesses(Ljava/util/Collection;Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public static killProcesses(Ljava/util/Collection;Landroid/content/Context;)I
    .locals 14
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, whiteList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 177
    .local v6, killedCount:I
    :try_start_0
    invoke-static {p1}, Llewa/os/MemoryUtilities;->refreshProtectPkgNames(Landroid/content/Context;)V

    .line 178
    const-string v11, "activity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 180
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 181
    .local v10, running:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 183
    .local v9, processName:Ljava/lang/String;
    invoke-static {p0, v9, v10}, Llewa/os/MemoryUtilities;->isProtected(Ljava/util/Collection;Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 184
    const-string v11, "MemoryUtilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is protected"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v9           #processName:Ljava/lang/String;
    .end local v10           #running:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "MemoryUtilities"

    const-string v12, "Kill process error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return v6

    .line 188
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v9       #processName:Ljava/lang/String;
    .restart local v10       #running:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const/4 v5, 0x1

    .line 189
    .local v5, kill:Z
    :try_start_1
    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    .line 190
    .local v8, packageName:Ljava/lang/String;
    invoke-static {v8}, Llewa/os/MemoryUtilities;->isExtremelyProtectedProcess(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-interface {p0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 191
    :cond_3
    const/4 v5, 0x0

    .line 201
    .end local v8           #packageName:Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v5, :cond_0

    .line 202
    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_0

    aget-object v8, v1, v4

    .line 203
    .restart local v8       #packageName:Ljava/lang/String;
    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    sget v12, Llewa/os/MemoryUtilities;->MINI_UID_TO_KILL:I

    if-ge v11, v12, :cond_8

    .line 204
    sget-object v11, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 202
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 193
    :cond_5
    invoke-static {v8}, Llewa/os/MemoryUtilities;->isProtectedProcess(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 194
    const/4 v5, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    sget-object v11, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 197
    const/4 v5, 0x0

    .line 198
    goto :goto_2

    .line 189
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 208
    :cond_8
    sget-object v11, Llewa/os/MemoryUtilities;->sKilledPackages:Ljava/util/HashSet;

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 209
    const-string v11, "MemoryUtilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stop: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_9
    const-string v11, "MemoryUtilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Kill: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method public static readAvailMem(ILandroid/content/Context;)J
    .locals 16
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 114
    const-wide/16 v7, 0x0

    .line 115
    .local v7, memFree:J
    const-wide/16 v5, 0x0

    .line 116
    .local v5, memCached:J
    const-wide/16 v10, 0x0

    .line 117
    .local v10, memTotal:J
    :try_start_0
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 118
    .local v4, mMemInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 120
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    .line 121
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v5

    .line 122
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    .line 123
    const-string v12, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 125
    .local v1, am:Landroid/app/ActivityManager;
    new-instance v9, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 126
    .local v9, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 127
    if-nez p0, :cond_0

    .line 128
    add-long v12, v7, v5

    iget-wide v14, v9, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    sub-long v2, v12, v14

    .line 129
    .local v2, free:J
    invoke-static/range {p1 .. p1}, Llewa/os/MemoryUtilities;->getBackgroundProcessMemory(Landroid/content/Context;)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 130
    const-wide/32 v12, 0x100000

    div-long v12, v2, v12

    .line 137
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #free:J
    .end local v4           #mMemInfoReader:Lcom/android/internal/util/MemInfoReader;
    .end local v9           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v12

    .line 132
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v4       #mMemInfoReader:Lcom/android/internal/util/MemInfoReader;
    .restart local v9       #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    :cond_0
    const-wide/32 v12, 0x100000

    div-long v12, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v4           #mMemInfoReader:Lcom/android/internal/util/MemInfoReader;
    .end local v9           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    :catch_0
    move-exception v12

    .line 137
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method private static refreshProtectPkgNames(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 69
    sget-object v9, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 72
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v9, 0xff

    :try_start_0
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 75
    .local v6, s:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v9, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".MediaPlaybackService"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    sget-object v9, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    iget-object v10, v6, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 88
    .local v4, info:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 89
    :try_start_1
    sget-object v9, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_2
    :goto_1
    const-string v9, "wallpaper"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v8

    .line 97
    .local v8, wm:Landroid/app/IWallpaperManager;
    :try_start_2
    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    .line 98
    .local v7, wi:Landroid/app/WallpaperInfo;
    if-eqz v7, :cond_3

    .line 99
    sget-object v9, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .end local v7           #wi:Landroid/app/WallpaperInfo;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "default_input_method"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, im:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 105
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 106
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    .line 107
    sget-object v9, Llewa/os/MemoryUtilities;->sProtectedPackagesActive:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1           #comp:Landroid/content/ComponentName;
    :cond_4
    return-void

    .line 100
    .end local v3           #im:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 91
    .end local v8           #wm:Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v9

    goto :goto_1

    .line 80
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method public static removeProtectedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 65
    sget-object v0, Llewa/os/MemoryUtilities;->sProtectedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
