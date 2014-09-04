.class Llewa/laml/ScreenElementRoot$FramerateHelper;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FramerateHelper"
.end annotation


# instance fields
.field private mFramerateText:Ljava/lang/String;

.field private mPaint:Landroid/text/TextPaint;

.field private mRealFrameRate:I

.field private mShowingFramerate:I

.field private mTextX:I

.field private mTextY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 851
    const/high16 v0, -0x1

    const/16 v1, 0xe

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v1, v2, v3}, Llewa/laml/ScreenElementRoot$FramerateHelper;-><init>(IIII)V

    .line 852
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "color"
    .parameter "size"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    .line 856
    iget-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 857
    iget-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 858
    iput p3, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mTextX:I

    .line 859
    iput p4, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mTextY:I

    .line 860
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 839
    iget-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    iget v1, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    if-eq v0, v1, :cond_1

    .line 840
    :cond_0
    iget v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    iput v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    .line 841
    const-string v0, "FPS %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 843
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    iget v1, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mTextX:I

    int-to-float v1, v1

    iget v2, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mTextY:I

    int-to-float v2, v2

    iget-object v3, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 844
    return-void
.end method

.method public set(I)V
    .locals 0
    .parameter "framerate"

    .prologue
    .line 847
    iput p1, p0, Llewa/laml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    .line 848
    return-void
.end method
