.class public Llewa/graphics/HslFilter$Filter;
.super Ljava/lang/Object;
.source "HslFilter.java"

# interfaces
.implements Llewa/graphics/IBitmapFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/graphics/HslFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# static fields
.field private static sTempTriple:[F


# instance fields
.field private mHueAdjust:F

.field private mHueModify:F

.field private mLightnessAdjust:F

.field private mLightnessModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F

.field public useHsv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Llewa/graphics/BitmapInfo;)V
    .locals 19
    .parameter "imgData"

    .prologue
    .line 90
    move-object/from16 v0, p1

    iget v12, v0, Llewa/graphics/BitmapInfo;->width:I

    .line 91
    .local v12, width:I
    move-object/from16 v0, p1

    iget v5, v0, Llewa/graphics/BitmapInfo;->height:I

    .line 92
    .local v5, height:I
    move-object/from16 v0, p1

    iget-object v9, v0, Llewa/graphics/BitmapInfo;->pixels:[I

    .line 93
    .local v9, pixels:[I
    const/4 v13, 0x0

    .local v13, x:I
    :goto_0
    if-ge v13, v12, :cond_d

    .line 94
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    if-ge v14, v5, :cond_c

    .line 95
    mul-int v15, v14, v12

    add-int v2, v13, v15

    .line 96
    .local v2, colorIndex:I
    aget v10, v9, v2

    .line 97
    .local v10, rgb:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Llewa/graphics/HslFilter$Filter;->useHsv:Z

    if-eqz v15, :cond_3

    .line 98
    sget-object v15, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    invoke-static {v10, v15}, Llewa/graphics/ColorFilterUtils;->RgbToHsv(I[F)V

    .line 101
    :goto_2
    sget-object v15, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    const/16 v16, 0x0

    aget v4, v15, v16

    .line 102
    .local v4, h:F
    sget-object v15, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    const/16 v16, 0x1

    aget v11, v15, v16

    .line 103
    .local v11, s:F
    sget-object v15, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    const/16 v16, 0x2

    aget v6, v15, v16

    .line 104
    .local v6, l:F
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mHueModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget v4, v0, Llewa/graphics/HslFilter$Filter;->mHueModify:F

    .line 113
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mSaturationModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget v11, v0, Llewa/graphics/HslFilter$Filter;->mSaturationModify:F

    .line 128
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mLightnessModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_9

    .line 129
    move-object/from16 v0, p0

    iget v6, v0, Llewa/graphics/HslFilter$Filter;->mLightnessModify:F

    .line 135
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Llewa/graphics/HslFilter$Filter;->useHsv:Z

    if-eqz v15, :cond_b

    invoke-static {v4, v11, v6}, Llewa/graphics/ColorFilterUtils;->HsvToRgb(FFF)I

    move-result v8

    .line 137
    .local v8, newRgb:I
    :goto_6
    const v15, 0xffffff

    and-int/2addr v15, v8

    const/high16 v16, -0x100

    aget v17, v9, v2

    and-int v16, v16, v17

    or-int v15, v15, v16

    aput v15, v9, v2

    .line 94
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 100
    .end local v4           #h:F
    .end local v6           #l:F
    .end local v8           #newRgb:I
    .end local v11           #s:F
    :cond_3
    sget-object v15, Llewa/graphics/HslFilter$Filter;->sTempTriple:[F

    invoke-static {v10, v15}, Llewa/graphics/ColorFilterUtils;->RgbToHsl(I[F)V

    goto :goto_2

    .line 106
    .restart local v4       #h:F
    .restart local v6       #l:F
    .restart local v11       #s:F
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mHueAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mHueAdjust:F

    add-float/2addr v4, v15

    .line 108
    const/high16 v15, 0x43b4

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_5

    .line 109
    const/high16 v15, 0x43b4

    sub-float/2addr v4, v15

    goto :goto_3

    .line 110
    :cond_5
    const/4 v15, 0x0

    cmpg-float v15, v4, v15

    if-gez v15, :cond_0

    .line 111
    const/high16 v15, 0x43b4

    add-float/2addr v4, v15

    goto :goto_3

    .line 115
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_8

    .line 118
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float v3, v11, v15

    .line 126
    .local v3, f:F
    :cond_7
    :goto_7
    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-static {v15, v3, v0}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v11

    goto :goto_4

    .line 120
    .end local v3           #f:F
    :cond_8
    const/high16 v15, 0x3f80

    const/high16 v16, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 121
    .local v7, multipleFactor:F
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    sub-float v16, v16, v17

    mul-float v1, v15, v16

    .line 122
    .local v1, additionFactor:F
    const/high16 v15, 0x3f80

    add-float/2addr v15, v7

    mul-float v3, v11, v15

    .line 123
    .restart local v3       #f:F
    const/4 v15, 0x0

    cmpl-float v15, v1, v15

    if-lez v15, :cond_7

    .line 124
    add-float/2addr v3, v1

    goto :goto_7

    .line 130
    .end local v1           #additionFactor:F
    .end local v3           #f:F
    .end local v7           #multipleFactor:F
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mLightnessAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget v15, v0, Llewa/graphics/HslFilter$Filter;->mLightnessAdjust:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_a

    .line 132
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/HslFilter$Filter;->mLightnessAdjust:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v6, v15

    goto/16 :goto_5

    .line 134
    :cond_a
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    sub-float v16, v16, v6

    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Llewa/graphics/HslFilter$Filter;->mLightnessAdjust:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    sub-float v6, v15, v16

    goto/16 :goto_5

    .line 135
    :cond_b
    invoke-static {v4, v11, v6}, Llewa/graphics/ColorFilterUtils;->HslToRgb(FFF)I

    move-result v8

    goto/16 :goto_6

    .line 93
    .end local v2           #colorIndex:I
    .end local v4           #h:F
    .end local v6           #l:F
    .end local v10           #rgb:I
    .end local v11           #s:F
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 142
    .end local v14           #y:I
    :cond_d
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 2
    .parameter "hue"

    .prologue
    .line 145
    const/high16 v0, -0x3ccc

    const/high16 v1, 0x4334

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mHueAdjust:F

    .line 146
    return-void
.end method

.method public setHueModify(F)V
    .locals 2
    .parameter "hue"

    .prologue
    .line 149
    const/4 v0, 0x0

    const v1, 0x43b3fffd

    invoke-static {v0, p1, v1}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mHueModify:F

    .line 150
    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 3
    .parameter "lightness"

    .prologue
    .line 153
    const/high16 v0, -0x4080

    const/high16 v1, 0x42c8

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mLightnessAdjust:F

    .line 154
    return-void
.end method

.method public setLightnessModify(F)V
    .locals 3
    .parameter "lightness"

    .prologue
    .line 157
    const/4 v0, 0x0

    const/high16 v1, 0x42c8

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mLightnessModify:F

    .line 158
    return-void
.end method

.method public setSaturationAdjust(F)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 161
    const/high16 v0, -0x4080

    const/high16 v1, 0x42c8

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mSaturationAdjust:F

    .line 162
    return-void
.end method

.method public setSaturationModify(F)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 165
    const/4 v0, 0x0

    const/high16 v1, 0x42c8

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llewa/graphics/HslFilter$Filter;->mSaturationModify:F

    .line 166
    return-void
.end method
