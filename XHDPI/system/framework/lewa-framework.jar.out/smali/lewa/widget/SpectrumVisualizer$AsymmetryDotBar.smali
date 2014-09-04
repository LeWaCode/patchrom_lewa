.class Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Llewa/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Llewa/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 10
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 345
    const-wide/high16 v0, 0x3fe0

    iget-object v2, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v2, v2, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-double v2, v2

    const-wide/high16 v6, 0x3ff0

    iget-object v4, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v4, v4, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    aget v4, v4, p2

    float-to-double v8, v4

    sub-double/2addr v6, v8

    mul-double/2addr v2, v6

    iget-object v4, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v4, v4, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    int-to-double v6, v4

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v5, v0, v1

    .line 347
    .local v5, top:I
    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v0, v0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v5, v0, :cond_0

    .line 348
    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v0, v0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v2, v5, v0

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v3, v0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v0, v0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v4, p2, v0

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v6, v0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v0, v0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v7, v0, v5

    const/4 v8, 0x1

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v9, v0, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 351
    :cond_0
    return-void
.end method
