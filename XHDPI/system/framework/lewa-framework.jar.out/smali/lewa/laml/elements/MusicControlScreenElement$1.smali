.class Llewa/laml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 278
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 282
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$000(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$100(Llewa/laml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)[I

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 285
    .local v1, currentTime:J
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLastUpdateTime:J
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$600(Llewa/laml/elements/MusicControlScreenElement;)J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-static {v4, v5, v6}, Llewa/laml/elements/MusicControlScreenElement;->access$514(Llewa/laml/elements/MusicControlScreenElement;J)J

    .line 286
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mDuration:J
    invoke-static {v7}, Llewa/laml/elements/MusicControlScreenElement;->access$700(Llewa/laml/elements/MusicControlScreenElement;)J

    move-result-wide v7

    iget-object v9, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v9}, Llewa/laml/elements/MusicControlScreenElement;->access$500(Llewa/laml/elements/MusicControlScreenElement;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4, v5, v6}, Llewa/laml/elements/MusicControlScreenElement;->access$502(Llewa/laml/elements/MusicControlScreenElement;J)J

    .line 287
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mLastUpdateTime:J
    invoke-static {v4, v1, v2}, Llewa/laml/elements/MusicControlScreenElement;->access$602(Llewa/laml/elements/MusicControlScreenElement;J)J

    .line 288
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mPositionVar:Llewa/laml/util/IndexedNumberVariable;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$500(Llewa/laml/elements/MusicControlScreenElement;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 289
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v4

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)[I

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$500(Llewa/laml/elements/MusicControlScreenElement;)J

    move-result-wide v4

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v6}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, appendStr:Ljava/lang/String;
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$900(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "append-----:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$208(Llewa/laml/elements/MusicControlScreenElement;)I

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v6}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, deleteStr:Ljava/lang/String;
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$1000(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 298
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->setLyricVar()V
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$1100(Llewa/laml/elements/MusicControlScreenElement;)V

    .line 300
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete---:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLyricAfterBuilder--delete---:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v6}, Llewa/laml/elements/MusicControlScreenElement;->access$1000(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0           #appendStr:Ljava/lang/String;
    .end local v3           #deleteStr:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->setLyricCurrentLineProgressVar()V
    invoke-static {v4}, Llewa/laml/elements/MusicControlScreenElement;->access$1200(Llewa/laml/elements/MusicControlScreenElement;)V

    .line 305
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$1;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I
    invoke-static {v5}, Llewa/laml/elements/MusicControlScreenElement;->access$1300(Llewa/laml/elements/MusicControlScreenElement;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
