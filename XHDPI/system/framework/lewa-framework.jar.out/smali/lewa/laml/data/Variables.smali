.class public Llewa/laml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/Variables$StringInfo;,
        Llewa/laml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final GLOBAL:Ljava/lang/String; = "__global"

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDoubleIndex:I

.field private mNextStringIndex:I

.field private mNumLock:Ljava/lang/Object;

.field private mNumObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrLock:Ljava/lang/Object;

.field private mStrObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/Variables$StringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Llewa/laml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Llewa/laml/data/Variables;->mNextDoubleIndex:I

    .line 18
    iput v0, p0, Llewa/laml/data/Variables;->mNextStringIndex:I

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mNumLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mStrLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mNumObjects:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mStrObjects:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    .line 190
    return-void
.end method

.method private getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter "object"
    .parameter "property"
    .parameter "nextIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez p2, :cond_0

    .line 35
    const-string p2, "__global"

    .line 38
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 39
    .local v1, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .restart local v1       #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 46
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local p4
    :goto_0
    return p4

    .restart local p4
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0
.end method


# virtual methods
.method public getNum(I)Ljava/lang/Double;
    .locals 3
    .parameter "index"

    .prologue
    .line 54
    iget-object v2, p0, Llewa/laml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 56
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$DoubleInfo;

    .line 57
    .local v0, doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, v0, Llewa/laml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    monitor-exit v2

    .line 61
    .end local v0           #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    :goto_0
    return-object v1

    .line 60
    :cond_0
    monitor-exit v2

    .line 61
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumVer(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 65
    iget-object v2, p0, Llewa/laml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 67
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$DoubleInfo;

    .line 68
    .local v0, doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    if-eqz v0, :cond_0

    .line 69
    iget v1, v0, Llewa/laml/data/Variables$DoubleInfo;->mVersion:I

    monitor-exit v2

    .line 72
    .end local v0           #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    :goto_0
    return v1

    .line 71
    :cond_0
    monitor-exit v2

    .line 72
    const/4 v1, -0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 76
    iget-object v2, p0, Llewa/laml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 78
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$StringInfo;

    .line 79
    .local v0, stringInfo:Llewa/laml/data/Variables$StringInfo;
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, v0, Llewa/laml/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    monitor-exit v2

    .line 83
    .end local v0           #stringInfo:Llewa/laml/data/Variables$StringInfo;
    :goto_0
    return-object v1

    .line 82
    :cond_0
    monitor-exit v2

    .line 83
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStrVer(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 87
    iget-object v2, p0, Llewa/laml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 89
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$StringInfo;

    .line 90
    .local v0, stringInfo:Llewa/laml/data/Variables$StringInfo;
    if-eqz v0, :cond_0

    .line 91
    iget v1, v0, Llewa/laml/data/Variables$StringInfo;->mVersion:I

    monitor-exit v2

    .line 94
    .end local v0           #stringInfo:Llewa/laml/data/Variables$StringInfo;
    :goto_0
    return v1

    .line 93
    :cond_0
    monitor-exit v2

    .line 94
    const/4 v1, -0x1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putNum(ID)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 98
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Llewa/laml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 99
    return-void
.end method

.method public putNum(ILjava/lang/Double;)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 102
    iget-object v2, p0, Llewa/laml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    if-ltz p1, :cond_1

    .line 104
    :goto_0
    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 105
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$DoubleInfo;

    .line 108
    .local v0, doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p2}, Llewa/laml/data/Variables$DoubleInfo;->setValue(Ljava/lang/Double;)V

    .line 115
    .end local v0           #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    :cond_1
    :goto_1
    monitor-exit v2

    .line 116
    return-void

    .line 111
    .restart local v0       #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    :cond_2
    new-instance v0, Llewa/laml/data/Variables$DoubleInfo;

    .end local v0           #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Llewa/laml/data/Variables$DoubleInfo;-><init>(Ljava/lang/Double;I)V

    .line 112
    .restart local v0       #doubleInfo:Llewa/laml/data/Variables$DoubleInfo;
    iget-object v1, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public putStr(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 119
    iget-object v2, p0, Llewa/laml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    if-ltz p1, :cond_1

    .line 121
    :goto_0
    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 122
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_0
    :try_start_1
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Variables$StringInfo;

    .line 125
    .local v0, stringInfo:Llewa/laml/data/Variables$StringInfo;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, p2}, Llewa/laml/data/Variables$StringInfo;->setValue(Ljava/lang/String;)V

    .line 132
    .end local v0           #stringInfo:Llewa/laml/data/Variables$StringInfo;
    :cond_1
    :goto_1
    monitor-exit v2

    .line 133
    return-void

    .line 128
    .restart local v0       #stringInfo:Llewa/laml/data/Variables$StringInfo;
    :cond_2
    new-instance v0, Llewa/laml/data/Variables$StringInfo;

    .end local v0           #stringInfo:Llewa/laml/data/Variables$StringInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Llewa/laml/data/Variables$StringInfo;-><init>(Ljava/lang/String;I)V

    .line 129
    .restart local v0       #stringInfo:Llewa/laml/data/Variables$StringInfo;
    iget-object v1, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "mapKey"
    .parameter "valueKey"

    .prologue
    .line 136
    iget-object v2, p0, Llewa/laml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mNumObjects:Ljava/util/HashMap;

    iget v3, p0, Llewa/laml/data/Variables;->mNextDoubleIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Llewa/laml/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, index:I
    iget v1, p0, Llewa/laml/data/Variables;->mNextDoubleIndex:I

    if-ne v0, v1, :cond_0

    .line 139
    iget v1, p0, Llewa/laml/data/Variables;->mNextDoubleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/laml/data/Variables;->mNextDoubleIndex:I

    .line 141
    :cond_0
    sget-boolean v1, Llewa/laml/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerNumberVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    monitor-exit v2

    return v0

    .line 145
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "mapKey"
    .parameter "valueKey"

    .prologue
    .line 149
    iget-object v2, p0, Llewa/laml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v1, p0, Llewa/laml/data/Variables;->mStrObjects:Ljava/util/HashMap;

    iget v3, p0, Llewa/laml/data/Variables;->mNextStringIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Llewa/laml/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, index:I
    iget v1, p0, Llewa/laml/data/Variables;->mNextStringIndex:I

    if-ne v0, v1, :cond_0

    .line 152
    iget v1, p0, Llewa/laml/data/Variables;->mNextStringIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/laml/data/Variables;->mNextStringIndex:I

    .line 154
    :cond_0
    sget-boolean v1, Llewa/laml/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStringVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    monitor-exit v2

    return v0

    .line 158
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v2, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 164
    iget-object v2, p0, Llewa/laml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v2, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 168
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Llewa/laml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    return-void
.end method
