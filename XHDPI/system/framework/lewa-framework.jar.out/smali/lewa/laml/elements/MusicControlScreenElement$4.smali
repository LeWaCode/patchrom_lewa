.class Llewa/laml/elements/MusicControlScreenElement$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, artist:Ljava/lang/String;
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    .line 335
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1600(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 337
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    new-instance v3, Llewa/laml/util/IndexedStringVariable;

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-object v4, v4, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "title"

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Llewa/laml/elements/MusicControlScreenElement;->access$1602(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;

    .line 339
    :cond_1
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1600(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1700(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 341
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    new-instance v3, Llewa/laml/util/IndexedStringVariable;

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-object v4, v4, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "artist"

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Llewa/laml/elements/MusicControlScreenElement;->access$1702(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;

    .line 343
    :cond_2
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1700(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v0}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 345
    :cond_3
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 346
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v7}, Llewa/laml/elements/TextScreenElement;->show(Z)V

    .line 358
    :cond_4
    :goto_0
    return-void

    .line 349
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 350
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 355
    :goto_1
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Llewa/laml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 351
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_7
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    const-string v3, "%s   %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const-string v4, "playing"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v3, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$002(Llewa/laml/elements/MusicControlScreenElement;Z)Z

    .line 365
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlayerStatusListener--action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mIsPlaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v3, "metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, extra:Ljava/lang/String;
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metachanged  extra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$4;->setTrackInfo(Landroid/content/Intent;)V

    .line 372
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$1900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 373
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v3, v3, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v3}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$2100(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->resetLyric()V
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2200(Llewa/laml/elements/MusicControlScreenElement;)V

    .line 376
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->resetMusicProgress()V
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2300(Llewa/laml/elements/MusicControlScreenElement;)V

    .line 384
    :cond_0
    :goto_0
    const-string v3, "meta_changed_buffer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v3, v3, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v3, :cond_1

    .line 386
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$2500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 411
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #extra:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 378
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #extra:Ljava/lang/String;
    :cond_2
    const-string v3, "meta_changed_album"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/4 v4, 0x1

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v3, p2, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$2400(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #extra:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 389
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "refreshprogress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const-string v4, "blocking"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v3, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$102(Llewa/laml/elements/MusicControlScreenElement;Z)Z

    .line 391
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$100(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v3, v3, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$2500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_1

    .line 394
    :cond_4
    const-string v3, "playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 395
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/elements/TextScreenElement;->isVisible()Z

    move-result v3

    if-nez v3, :cond_5

    .line 396
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$4;->setTrackInfo(Landroid/content/Intent;)V

    .line 397
    :cond_5
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$1900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 398
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/4 v4, 0x1

    #calls: Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric(Z)V
    invoke-static {v3, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$2600(Llewa/laml/elements/MusicControlScreenElement;Z)V

    goto :goto_1

    .line 399
    :cond_6
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "lockscreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 400
    :cond_7
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$4;->setTrackInfo(Landroid/content/Intent;)V

    .line 401
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$2700(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 402
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric()V
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2800(Llewa/laml/elements/MusicControlScreenElement;)V

    goto/16 :goto_1

    .line 403
    :cond_8
    const-string v3, "responselyric"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v3, v3, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$2900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 405
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$2500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 406
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric()V
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$2800(Llewa/laml/elements/MusicControlScreenElement;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
