.class public Llewa/laml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/SoundManager$SoundOptions;
    }
.end annotation


# static fields
.field private static final MAX_STREAMS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SoundManager"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mInitialized:Z

.field private mPendingOption:Llewa/laml/SoundManager$SoundOptions;

.field private mPendingSoundMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/laml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/laml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Llewa/laml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;)V
    .locals 1
    .parameter "context"
    .parameter "rm"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/laml/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 37
    iput-object p2, p0, Llewa/laml/SoundManager;->mResourceManager:Llewa/laml/ResourceManager;

    .line 38
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Llewa/laml/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    return-void
.end method

.method private declared-synchronized init()V
    .locals 5

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llewa/laml/SoundManager;->mInitialized:Z

    .line 45
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    iget-object v1, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SoundManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isPlayingSound(Ljava/lang/String;)I
    .locals 3
    .parameter "sound"

    .prologue
    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 82
    :goto_1
    return v2

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private declared-synchronized playSoundImp(ILlewa/laml/SoundManager$SoundOptions;)V
    .locals 11
    .parameter "sampleId"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 56
    :try_start_1
    iget-boolean v0, p2, Llewa/laml/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, N:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 58
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 57
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 61
    .end local v7           #N:I
    .end local v9           #i:I
    :cond_1
    iget-boolean v0, p2, Llewa/laml/SoundManager$SoundOptions;->mStop:Z

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p2, Llewa/laml/SoundManager$SoundOptions;->mSound:Ljava/lang/String;

    invoke-direct {p0, v0}, Llewa/laml/SoundManager;->isPlayingSound(Ljava/lang/String;)I

    move-result v10

    .line 63
    .local v10, streamID:I
    if-eq v10, v5, :cond_2

    .line 64
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v10}, Landroid/media/SoundPool;->stop(I)V

    .line 65
    iget-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .end local v10           #streamID:I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 68
    :cond_3
    :try_start_2
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p2, Llewa/laml/SoundManager$SoundOptions;->mVolume:F

    iget v3, p2, Llewa/laml/SoundManager$SoundOptions;->mVolume:F

    const/4 v4, 0x1

    iget-boolean v1, p2, Llewa/laml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v1, :cond_4

    :goto_2
    const/high16 v6, 0x3f80

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v10

    .line 70
    .restart local v10       #streamID:I
    iget-object v0, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 72
    .end local v10           #streamID:I
    :catch_0
    move-exception v8

    .line 73
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SoundManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 54
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 86
    if-nez p3, :cond_1

    .line 87
    iget-object v1, p0, Llewa/laml/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/SoundManager$SoundOptions;

    .line 88
    .local v0, options:Llewa/laml/SoundManager$SoundOptions;
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Llewa/laml/SoundManager;->mPendingOption:Llewa/laml/SoundManager$SoundOptions;

    .line 90
    :cond_0
    invoke-direct {p0, p2, v0}, Llewa/laml/SoundManager;->playSoundImp(ILlewa/laml/SoundManager$SoundOptions;)V

    .line 92
    .end local v0           #options:Llewa/laml/SoundManager$SoundOptions;
    :cond_1
    iget-object v1, p0, Llewa/laml/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 93
    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Llewa/laml/SoundManager$SoundOptions;)V
    .locals 10
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 96
    monitor-enter p0

    const/4 v8, 0x0

    .line 97
    .local v8, memoryFile:Landroid/os/MemoryFile;
    :try_start_0
    iget-boolean v0, p0, Llewa/laml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Llewa/laml/SoundManager;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/laml/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/laml/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 104
    .local v9, soundId:Ljava/lang/Integer;
    if-eqz v9, :cond_1

    .line 105
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Llewa/laml/SoundManager;->playSoundImp(ILlewa/laml/SoundManager$SoundOptions;)V

    .line 107
    :cond_1
    iget-object v0, p0, Llewa/laml/SoundManager;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v0, p1}, Llewa/laml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v8

    .line 108
    if-nez v8, :cond_4

    .line 109
    const-string v0, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the sound does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v9           #soundId:Ljava/lang/Integer;
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 127
    :try_start_2
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 112
    .restart local v9       #soundId:Ljava/lang/Integer;
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 113
    .local v1, fileDescriptor:Ljava/io/FileDescriptor;
    iput-object p2, p0, Llewa/laml/SoundManager;->mPendingOption:Llewa/laml/SoundManager$SoundOptions;

    .line 114
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 115
    iget-object v0, p0, Llewa/laml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Llewa/laml/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 118
    .end local v1           #fileDescriptor:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/io/IOException;
    :try_start_4
    const-string v0, "SoundManager"

    const-string v2, "fail to load sound. "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 123
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #soundId:Ljava/lang/Integer;
    :catch_1
    move-exception v7

    .line 124
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "SoundManager"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    if-eqz v8, :cond_3

    .line 127
    :try_start_6
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 96
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_5

    .line 127
    :try_start_7
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 5

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Llewa/laml/SoundManager;->mInitialized:Z

    if-eqz v3, :cond_3

    .line 133
    iget-object v3, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 135
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_1
    iget-object v3, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    iget-object v3, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/laml/SoundManager$SoundOptions;

    iget-boolean v3, v3, Llewa/laml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, p0, Llewa/laml/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object v3, p0, Llewa/laml/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 140
    iget-object v3, p0, Llewa/laml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 141
    iget-object v3, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 142
    iget-object v3, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 143
    const/4 v3, 0x0

    iput-object v3, p0, Llewa/laml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_2
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Llewa/laml/SoundManager;->mInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_3
    monitor-exit p0

    return-void

    .line 144
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SoundManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
