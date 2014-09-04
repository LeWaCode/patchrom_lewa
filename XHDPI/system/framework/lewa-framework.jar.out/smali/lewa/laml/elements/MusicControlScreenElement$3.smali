.class Llewa/laml/elements/MusicControlScreenElement$3;
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
    .line 318
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Llewa/laml/elements/MusicControlScreenElement;->access$1500(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/MusicControlScreenElement;->updateSpectrumVisualizer()V

    .line 323
    return-void
.end method
