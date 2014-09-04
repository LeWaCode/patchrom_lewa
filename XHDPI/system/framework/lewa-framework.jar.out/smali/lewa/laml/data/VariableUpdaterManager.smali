.class public Llewa/laml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mContext:Llewa/laml/ScreenContext;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llewa/laml/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Llewa/laml/data/VariableUpdaterManager;->mContext:Llewa/laml/ScreenContext;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Llewa/laml/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 21
    iget-object v0, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .locals 9
    .parameter "tag"

    .prologue
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "none"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 26
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, updaters:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v0, v6

    .local v0, N:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 28
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, str:Ljava/lang/String;
    move-object v4, v5

    .line 30
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, ext:Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 32
    .local v1, dotPos:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 33
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 34
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_0
    const-string v7, "DateTime"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 37
    new-instance v7, Llewa/laml/data/DateTimeVariableUpdater;

    invoke-direct {v7, p0, v2}, Llewa/laml/data/DateTimeVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Llewa/laml/data/VariableUpdaterManager;->add(Llewa/laml/data/VariableUpdater;)V

    .line 27
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    const-string v7, "Battery"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    new-instance v7, Llewa/laml/data/BatteryVariableUpdater;

    iget-object v8, p0, Llewa/laml/data/VariableUpdaterManager;->mContext:Llewa/laml/ScreenContext;

    invoke-direct {v7, p0, v8}, Llewa/laml/data/BatteryVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Llewa/laml/ScreenContext;)V

    invoke-virtual {p0, v7}, Llewa/laml/data/VariableUpdaterManager;->add(Llewa/laml/data/VariableUpdater;)V

    goto :goto_1

    .line 44
    .end local v0           #N:I
    .end local v1           #dotPos:I
    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #updaters:[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/VariableUpdater;

    .line 48
    .local v1, updater:Llewa/laml/data/VariableUpdater;
    invoke-virtual {v1}, Llewa/laml/data/VariableUpdater;->finish()V

    goto :goto_0

    .line 50
    .end local v1           #updater:Llewa/laml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Llewa/laml/data/VariableUpdaterManager;->mContext:Llewa/laml/ScreenContext;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/VariableUpdater;

    .line 58
    .local v1, updater:Llewa/laml/data/VariableUpdater;
    invoke-virtual {v1}, Llewa/laml/data/VariableUpdater;->init()V

    goto :goto_0

    .line 60
    .end local v1           #updater:Llewa/laml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/VariableUpdater;

    .line 64
    .local v1, updater:Llewa/laml/data/VariableUpdater;
    invoke-virtual {v1}, Llewa/laml/data/VariableUpdater;->pause()V

    goto :goto_0

    .line 66
    .end local v1           #updater:Llewa/laml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public remove(Llewa/laml/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 69
    iget-object v0, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 73
    iget-object v2, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/VariableUpdater;

    .line 74
    .local v1, updater:Llewa/laml/data/VariableUpdater;
    invoke-virtual {v1}, Llewa/laml/data/VariableUpdater;->resume()V

    goto :goto_0

    .line 76
    .end local v1           #updater:Llewa/laml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 79
    iget-object v2, p0, Llewa/laml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/VariableUpdater;

    .line 80
    .local v1, updater:Llewa/laml/data/VariableUpdater;
    invoke-virtual {v1, p1, p2}, Llewa/laml/data/VariableUpdater;->tick(J)V

    goto :goto_0

    .line 82
    .end local v1           #updater:Llewa/laml/data/VariableUpdater;
    :cond_0
    return-void
.end method
