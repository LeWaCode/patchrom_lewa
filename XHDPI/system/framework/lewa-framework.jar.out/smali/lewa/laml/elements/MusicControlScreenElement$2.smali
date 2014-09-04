.class Llewa/laml/elements/MusicControlScreenElement$2;
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
    .line 309
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$2;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$2;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->updateMusic()V
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1400(Llewa/laml/elements/MusicControlScreenElement;)V

    .line 313
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$2;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/MusicControlScreenElement;->updateSpectrumVisualizer()V

    .line 314
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$2;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method
