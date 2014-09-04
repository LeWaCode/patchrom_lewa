.class Llewa/widget/SpectrumVisualizer$SymmetryDotBar;
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
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Llewa/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 17
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 363
    const-wide/high16 v1, 0x3fe0

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v3, v3, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0

    move-object/from16 v0, p0

    iget-object v5, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v5, v5, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    aget v5, v5, p2

    float-to-double v9, v5

    sub-double/2addr v7, v9

    mul-double/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v5, v5, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    int-to-double v7, v5

    div-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v2, v2, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v6, v1, v2

    .line 365
    .local v6, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v6, v1, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v2, v1, Llewa/widget/SpectrumVisualizer;->mPixels:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v3, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v4, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v5, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v7, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v8, v1, v6

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v10, v1, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 369
    :cond_0
    const-wide/high16 v1, 0x3fe0

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v3, v3, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v4, v4, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v4, v4, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v2, v2, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v14, v1, v2

    .line 371
    .local v14, bottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    if-le v14, v1, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v14, v1, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 374
    :cond_1
    if-lez v14, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v8, v1, Llewa/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v10, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v1, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v11, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v12, v1, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget v13, v1, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Llewa/widget/SpectrumVisualizer;

    iget-object v0, v1, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 378
    :cond_2
    return-void
.end method
