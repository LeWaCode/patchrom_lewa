.class public Llewa/lockscreen/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private mLoader:Llewa/lockscreen/LockScreenResourceLoader;

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/Context;Llewa/lockscreen/LockScreenResourceLoader;)V
    .locals 4
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Llewa/lockscreen/SoundManager;->mLoader:Llewa/lockscreen/LockScreenResourceLoader;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 29
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 30
    return-void
.end method

.method private playSoundImp(IZ)V
    .locals 10
    .parameter "sampleId"
    .parameter "flag"

    .prologue
    const/high16 v2, 0x3f80

    .line 34
    if-eqz p2, :cond_1

    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 36
    .local v8, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 37
    iget-object v1, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .end local v7           #i:I
    .end local v8           #size:I
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 43
    .local v9, success:I
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundpool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    .local v1, sample_Id:Ljava/lang/Integer;
    if-nez p3, :cond_0

    .line 57
    iget-object v2, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    .local v0, flag:Z
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v0}, Llewa/lockscreen/SoundManager;->playSoundImp(IZ)V

    .line 60
    .end local v0           #flag:Z
    :cond_0
    iget-object v2, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public playSound(Ljava/lang/String;Z)V
    .locals 15
    .parameter "soundName"
    .parameter "flag"

    .prologue
    .line 65
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v12, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 70
    .local v7, integer:Ljava/lang/Integer;
    if-nez v7, :cond_8

    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 74
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 76
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mLoader:Llewa/lockscreen/LockScreenResourceLoader;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Llewa/lockscreen/LockScreenResourceLoader;->getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/face/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, path:Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 79
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/16 v12, 0x2800

    :try_start_1
    new-array v3, v12, [B

    .line 80
    .local v3, buffer:[B
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 81
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v11, -0x1

    .line 82
    .local v11, temp:I
    :goto_1
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 83
    const/4 v12, 0x0

    invoke-virtual {v6, v3, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 92
    .end local v3           #buffer:[B
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #temp:I
    .local v4, e:Ljava/io/IOException;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v5, :cond_2

    .line 96
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 97
    const/4 v5, 0x0

    .line 99
    :cond_2
    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    const/4 v1, 0x0

    .line 103
    :cond_3
    if-eqz v8, :cond_0

    .line 104
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    const/4 v8, 0x0

    goto :goto_0

    .line 85
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buffer:[B
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #temp:I
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 87
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v10

    .line 88
    .local v10, soundID:I
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v12, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 95
    if-eqz v6, :cond_a

    .line 96
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 97
    const/4 v5, 0x0

    .line 99
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v2, :cond_9

    .line 100
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 101
    const/4 v1, 0x0

    .line 103
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v8, :cond_0

    .line 104
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 105
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 107
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 108
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #e:Ljava/io/IOException;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 107
    .end local v3           #buffer:[B
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #soundID:I
    .end local v11           #temp:I
    :catch_2
    move-exception v4

    .line 108
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 95
    :goto_6
    if-eqz v5, :cond_5

    .line 96
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 97
    const/4 v5, 0x0

    .line 99
    :cond_5
    if-eqz v1, :cond_6

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    const/4 v1, 0x0

    .line 103
    :cond_6
    if-eqz v8, :cond_7

    .line 104
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 105
    const/4 v8, 0x0

    .line 109
    :cond_7
    :goto_7
    throw v12

    .line 107
    :catch_3
    move-exception v4

    .line 108
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 113
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Llewa/lockscreen/SoundManager;->playSoundImp(IZ)V

    goto/16 :goto_0

    .line 94
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #path:Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buffer:[B
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #temp:I
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 91
    .end local v3           #buffer:[B
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #temp:I
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #path:Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 107
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buffer:[B
    .restart local v10       #soundID:I
    .restart local v11       #temp:I
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    :catch_7
    move-exception v4

    goto :goto_5

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :cond_9
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_a
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 120
    iput-object v1, p0, Llewa/lockscreen/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 122
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    iput-object v1, p0, Llewa/lockscreen/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 126
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iput-object v1, p0, Llewa/lockscreen/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 130
    :cond_2
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 132
    iput-object v1, p0, Llewa/lockscreen/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 134
    :cond_3
    return-void
.end method
