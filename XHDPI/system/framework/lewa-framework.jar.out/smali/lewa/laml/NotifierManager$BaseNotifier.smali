.class public abstract Llewa/laml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation


# instance fields
.field private mActiveReference:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReference:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Llewa/laml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method


# virtual methods
.method public final addActiveRef()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mActiveReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mActiveReference:I

    return v0
.end method

.method public final addListener(Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 125
    iget-object v1, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final addRef()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mReference:I

    return v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->unregister()V

    .line 132
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->register()V

    .line 136
    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 139
    iget-object v3, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v2, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/NotifierManager$OnNotifyListener;

    .line 141
    .local v1, l:Llewa/laml/NotifierManager$OnNotifyListener;
    invoke-interface {v1, p1, p2, p3}, Llewa/laml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Llewa/laml/NotifierManager$OnNotifyListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    return-void
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->unregister()V

    .line 152
    return-void
.end method

.method protected register()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->onRegister()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 159
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method public final releaseActiveRef()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mActiveReference:I

    if-lez v0, :cond_0

    .line 165
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mActiveReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mActiveReference:I

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final releaseRef()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mReference:I

    if-lez v0, :cond_0

    .line 172
    iget v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mReference:I

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeListener(Llewa/laml/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 178
    iget-object v1, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Llewa/laml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->register()V

    .line 185
    return-void
.end method

.method protected unregister()V
    .locals 4

    .prologue
    .line 188
    iget-boolean v1, p0, Llewa/laml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 196
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "NotifierManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
