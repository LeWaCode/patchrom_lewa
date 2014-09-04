.class Llewa/laml/MultipleRenderable$RenderableInfo;
.super Ljava/lang/Object;
.source "MultipleRenderable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/MultipleRenderable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderableInfo"
.end annotation


# instance fields
.field public paused:Z

.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llewa/laml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llewa/laml/RendererController$IRenderable;)V
    .locals 1
    .parameter "re"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llewa/laml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 96
    return-void
.end method
