.class Llewa/widget/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Llewa/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Llewa/widget/SpectrumVisualizer$1;->this$0:Llewa/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1
    .parameter "visualizer"
    .parameter "bytes"
    .parameter "samplingRate"

    .prologue
    .line 383
    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$1;->this$0:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v0, p2}, Llewa/widget/SpectrumVisualizer;->update([B)V

    .line 384
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .parameter "visualizer"
    .parameter "bytes"
    .parameter "samplingRate"

    .prologue
    .line 387
    return-void
.end method
