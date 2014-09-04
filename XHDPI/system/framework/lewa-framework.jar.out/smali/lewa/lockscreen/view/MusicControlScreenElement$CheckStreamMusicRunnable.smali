.class Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckStreamMusicRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/MusicControlScreenElement;


# direct methods
.method private constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;Llewa/lockscreen/view/MusicControlScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #calls: Llewa/lockscreen/view/MusicControlScreenElement;->updateMusic()V
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$400(Llewa/lockscreen/view/MusicControlScreenElement;)V

    .line 538
    :try_start_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
