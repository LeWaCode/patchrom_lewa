.class public Llewa/graphics/LevelsFilter;
.super Ljava/lang/Object;
.source "LevelsFilter.java"

# interfaces
.implements Llewa/graphics/IBitmapFilter;


# instance fields
.field private mInputMax:F

.field private mInputMiddle:F

.field private mInputMin:F

.field private mIsFilterB:Z

.field private mIsFilterG:Z

.field private mIsFilterR:Z

.field private mOutputMax:F

.field private mOutputMin:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, 0x3f80

    iput v0, p0, Llewa/graphics/LevelsFilter;->mInputMiddle:F

    .line 8
    iput v3, p0, Llewa/graphics/LevelsFilter;->mInputMax:F

    .line 10
    iput v2, p0, Llewa/graphics/LevelsFilter;->mInputMin:F

    .line 12
    iput v3, p0, Llewa/graphics/LevelsFilter;->mOutputMax:F

    .line 14
    iput v2, p0, Llewa/graphics/LevelsFilter;->mOutputMin:F

    .line 16
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterR:Z

    .line 18
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterG:Z

    .line 20
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterB:Z

    return-void
.end method

.method private static interpolate(FFFFFI)I
    .locals 8
    .parameter "start"
    .parameter "gamma"
    .parameter "end"
    .parameter "outStart"
    .parameter "outEnd"
    .parameter "inputValue"

    .prologue
    const/high16 v7, 0x3f80

    .line 24
    int-to-float v3, p5

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_0

    .line 25
    float-to-int v3, p3

    .line 35
    :goto_0
    return v3

    .line 26
    :cond_0
    int-to-float v3, p5

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_1

    .line 27
    float-to-int v3, p4

    goto :goto_0

    .line 28
    :cond_1
    cmpl-float v3, p1, v7

    if-nez v3, :cond_2

    .line 29
    int-to-float v3, p5

    sub-float/2addr v3, p0

    sub-float v4, p4, p3

    mul-float/2addr v3, v4

    sub-float v4, p2, p0

    div-float/2addr v3, v4

    add-float/2addr v3, p3

    float-to-int v3, v3

    goto :goto_0

    .line 32
    :cond_2
    sub-float v1, p2, p0

    .line 33
    .local v1, inputRange:F
    sub-float v2, p4, p3

    .line 34
    .local v2, outRange:F
    int-to-float v3, p5

    sub-float/2addr v3, p0

    div-float v0, v3, v1

    .line 35
    .local v0, factor:F
    sub-float v3, v7, v0

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v7, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, p3

    float-to-int v3, v3

    goto :goto_0
.end method


# virtual methods
.method public process(Llewa/graphics/BitmapInfo;)V
    .locals 27
    .parameter "imgData"

    .prologue
    .line 40
    move-object/from16 v0, p1

    iget v0, v0, Llewa/graphics/BitmapInfo;->width:I

    move/from16 v24, v0

    .line 41
    .local v24, width:I
    move-object/from16 v0, p1

    iget v0, v0, Llewa/graphics/BitmapInfo;->height:I

    move/from16 v22, v0

    .line 42
    .local v22, height:I
    move-object/from16 v0, p1

    iget-object v0, v0, Llewa/graphics/BitmapInfo;->pixels:[I

    move-object/from16 v23, v0

    .line 43
    .local v23, pixels:[I
    const/16 v25, 0x0

    .local v25, x:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 44
    const/16 v26, 0x0

    .local v26, y:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 45
    mul-int v2, v26, v24

    add-int v21, v25, v2

    .line 46
    .local v21, colorIndex:I
    aget v20, v23, v21

    .line 47
    .local v20, argb:I
    const/high16 v2, 0xff

    and-int v2, v2, v20

    ushr-int/lit8 v7, v2, 0x10

    .line 48
    .local v7, r:I
    const v2, 0xff00

    and-int v2, v2, v20

    ushr-int/lit8 v13, v2, 0x8

    .line 49
    .local v13, g:I
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 50
    .local v19, b:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/graphics/LevelsFilter;->mIsFilterR:Z

    if-eqz v2, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget v2, v0, Llewa/graphics/LevelsFilter;->mInputMin:F

    move-object/from16 v0, p0

    iget v3, v0, Llewa/graphics/LevelsFilter;->mInputMiddle:F

    move-object/from16 v0, p0

    iget v4, v0, Llewa/graphics/LevelsFilter;->mInputMax:F

    move-object/from16 v0, p0

    iget v5, v0, Llewa/graphics/LevelsFilter;->mOutputMin:F

    move-object/from16 v0, p0

    iget v6, v0, Llewa/graphics/LevelsFilter;->mOutputMax:F

    invoke-static/range {v2 .. v7}, Llewa/graphics/LevelsFilter;->interpolate(FFFFFI)I

    move-result v7

    .line 52
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/graphics/LevelsFilter;->mIsFilterG:Z

    if-eqz v2, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget v8, v0, Llewa/graphics/LevelsFilter;->mInputMin:F

    move-object/from16 v0, p0

    iget v9, v0, Llewa/graphics/LevelsFilter;->mInputMiddle:F

    move-object/from16 v0, p0

    iget v10, v0, Llewa/graphics/LevelsFilter;->mInputMax:F

    move-object/from16 v0, p0

    iget v11, v0, Llewa/graphics/LevelsFilter;->mOutputMin:F

    move-object/from16 v0, p0

    iget v12, v0, Llewa/graphics/LevelsFilter;->mOutputMax:F

    invoke-static/range {v8 .. v13}, Llewa/graphics/LevelsFilter;->interpolate(FFFFFI)I

    move-result v13

    .line 54
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/graphics/LevelsFilter;->mIsFilterB:Z

    if-eqz v2, :cond_2

    .line 55
    move-object/from16 v0, p0

    iget v14, v0, Llewa/graphics/LevelsFilter;->mInputMin:F

    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/LevelsFilter;->mInputMiddle:F

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/LevelsFilter;->mInputMax:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/LevelsFilter;->mOutputMin:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/LevelsFilter;->mOutputMax:F

    move/from16 v18, v0

    invoke-static/range {v14 .. v19}, Llewa/graphics/LevelsFilter;->interpolate(FFFFFI)I

    move-result v19

    .line 56
    :cond_2
    shl-int/lit8 v2, v7, 0x10

    shl-int/lit8 v3, v13, 0x8

    or-int/2addr v2, v3

    or-int v2, v2, v19

    const/high16 v3, -0x100

    and-int v3, v3, v20

    or-int/2addr v2, v3

    aput v2, v23, v21

    .line 44
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 43
    .end local v7           #r:I
    .end local v13           #g:I
    .end local v19           #b:I
    .end local v20           #argb:I
    .end local v21           #colorIndex:I
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 59
    .end local v26           #y:I
    :cond_4
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    iput-boolean v0, p0, Llewa/graphics/LevelsFilter;->mIsFilterR:Z

    .line 63
    iput-boolean v0, p0, Llewa/graphics/LevelsFilter;->mIsFilterG:Z

    .line 64
    iput-boolean v0, p0, Llewa/graphics/LevelsFilter;->mIsFilterB:Z

    .line 65
    const-string v0, "r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "red"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterR:Z

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v0, "g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "green"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterG:Z

    goto :goto_0

    .line 69
    :cond_3
    const-string v0, "b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "blue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    :cond_4
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterB:Z

    goto :goto_0

    .line 72
    :cond_5
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterR:Z

    .line 73
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterG:Z

    .line 74
    iput-boolean v1, p0, Llewa/graphics/LevelsFilter;->mIsFilterB:Z

    goto :goto_0
.end method

.method public setInputMax(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 79
    const/high16 v0, 0x4000

    const/high16 v1, 0x437f

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/LevelsFilter;->mInputMax:F

    .line 80
    return-void
.end method

.method public setInputMiddle(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 83
    const v0, 0x38d1b717

    const v1, 0x411fff97

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/LevelsFilter;->mInputMiddle:F

    .line 84
    return-void
.end method

.method public setInputMin(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x0

    const/high16 v1, 0x437d

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/LevelsFilter;->mInputMin:F

    .line 88
    return-void
.end method

.method public setOutputMax(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    const/4 v0, 0x0

    const/high16 v1, 0x437f

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/LevelsFilter;->mOutputMax:F

    .line 92
    return-void
.end method

.method public setOutputMin(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 95
    const/4 v0, 0x0

    const/high16 v1, 0x437f

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/LevelsFilter;->mOutputMin:F

    .line 96
    return-void
.end method
