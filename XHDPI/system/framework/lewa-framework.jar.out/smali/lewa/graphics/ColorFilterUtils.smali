.class public Llewa/graphics/ColorFilterUtils;
.super Ljava/lang/Object;
.source "ColorFilterUtils.java"


# static fields
.field static final COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static HslToRgb(FFF)I
    .locals 19
    .parameter "h"
    .parameter "s"
    .parameter "l"

    .prologue
    .line 35
    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-nez v9, :cond_0

    .line 36
    const/high16 v9, 0x437f

    mul-float v9, v9, p2

    float-to-int v2, v9

    .line 37
    .local v2, b:I
    move v4, v2

    .line 38
    .local v4, g:I
    move v8, v2

    .line 73
    .local v8, r:I
    :goto_0
    invoke-static {v8, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    return v9

    .line 41
    .end local v2           #b:I
    .end local v4           #g:I
    .end local v8           #r:I
    :cond_0
    move/from16 v0, p2

    float-to-double v9, v0

    const-wide/high16 v11, 0x3fe0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 42
    const/high16 v9, 0x3f80

    add-float v9, v9, p1

    mul-float v7, p2, v9

    .line 45
    .local v7, q:F
    :goto_1
    const/high16 v9, 0x4000

    mul-float v9, v9, p2

    sub-float v6, v9, v7

    .line 46
    .local v6, p:F
    const/high16 v9, 0x43b4

    div-float v3, p0, v9

    .line 47
    .local v3, f:F
    const/4 v9, 0x3

    new-array v1, v9, [D

    const/4 v9, 0x0

    const v10, 0x3eaaaaaa

    add-float/2addr v10, v3

    float-to-double v10, v10

    aput-wide v10, v1, v9

    const/4 v9, 0x1

    float-to-double v10, v3

    aput-wide v10, v1, v9

    const/4 v9, 0x2

    const v10, 0x3eaaaaaa

    sub-float v10, v3, v10

    float-to-double v10, v10

    aput-wide v10, v1, v9

    .line 50
    .local v1, T:[D
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    const/4 v9, 0x3

    if-ge v5, v9, :cond_7

    .line 51
    aget-wide v9, v1, v5

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    .line 52
    const-wide/high16 v9, 0x3ff0

    aget-wide v11, v1, v5

    add-double/2addr v9, v11

    aput-wide v9, v1, v5

    .line 55
    :cond_1
    :goto_3
    const-wide/high16 v9, 0x4018

    aget-wide v11, v1, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_4

    .line 56
    float-to-double v9, v6

    const/high16 v11, 0x40c0

    sub-float v12, v7, v6

    mul-float/2addr v11, v12

    float-to-double v11, v11

    aget-wide v13, v1, v5

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v1, v5

    .line 50
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 44
    .end local v1           #T:[D
    .end local v3           #f:F
    .end local v5           #i:I
    .end local v6           #p:F
    .end local v7           #q:F
    :cond_2
    add-float v9, p2, p1

    mul-float v10, p2, p1

    sub-float v7, v9, v10

    .restart local v7       #q:F
    goto :goto_1

    .line 53
    .restart local v1       #T:[D
    .restart local v3       #f:F
    .restart local v5       #i:I
    .restart local v6       #p:F
    :cond_3
    aget-wide v9, v1, v5

    const-wide/high16 v11, 0x3ff0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    .line 54
    aget-wide v9, v1, v5

    const-wide/high16 v11, 0x3ff0

    sub-double/2addr v9, v11

    aput-wide v9, v1, v5

    goto :goto_3

    .line 59
    :cond_4
    const-wide/high16 v9, 0x4000

    aget-wide v11, v1, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    .line 60
    float-to-double v9, v7

    aput-wide v9, v1, v5

    goto :goto_4

    .line 63
    :cond_5
    const-wide/high16 v9, 0x4008

    aget-wide v11, v1, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6

    .line 64
    float-to-double v9, v6

    const-wide/high16 v11, 0x4018

    sub-float v13, v7, v6

    float-to-double v13, v13

    const-wide v15, 0x3fe5555560000000L

    aget-wide v17, v1, v5

    sub-double v15, v15, v17

    mul-double/2addr v13, v15

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v1, v5

    goto :goto_4

    .line 66
    :cond_6
    float-to-double v9, v6

    aput-wide v9, v1, v5

    goto :goto_4

    .line 69
    :cond_7
    const-wide v9, 0x406fe00000000000L

    const/4 v11, 0x0

    aget-wide v11, v1, v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 70
    .restart local v8       #r:I
    const-wide v9, 0x406fe00000000000L

    const/4 v11, 0x1

    aget-wide v11, v1, v11

    mul-double/2addr v9, v11

    double-to-int v4, v9

    .line 71
    .restart local v4       #g:I
    const-wide v9, 0x406fe00000000000L

    const/4 v11, 0x2

    aget-wide v11, v1, v11

    mul-double/2addr v9, v11

    double-to-int v2, v9

    .restart local v2       #b:I
    goto/16 :goto_0
.end method

.method public static HslToRgb([F)I
    .locals 3
    .parameter "hsl"

    .prologue
    .line 77
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Llewa/graphics/ColorFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static HsvToRgb(FFF)I
    .locals 2
    .parameter "h"
    .parameter "s"
    .parameter "v"

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static RgbToHsl(III[F)V
    .locals 12
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "hsl"

    .prologue
    .line 81
    int-to-float v8, p0

    const/high16 v9, 0x437f

    div-float v7, v8, v9

    .line 82
    .local v7, r:F
    int-to-float v8, p1

    const/high16 v9, 0x437f

    div-float v4, v8, v9

    .line 83
    .local v4, g:F
    int-to-float v8, p2

    const/high16 v9, 0x437f

    div-float v0, v8, v9

    .line 84
    .local v0, b:F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 85
    .local v5, max:F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 87
    .local v6, min:F
    cmpl-float v8, v5, v6

    if-nez v8, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 99
    .local v1, f:F
    :goto_0
    add-float v8, v5, v6

    const/high16 v9, 0x4000

    div-float v2, v8, v9

    .line 101
    .local v2, f1:F
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-eqz v8, :cond_7

    cmpl-float v8, v5, v6

    if-eqz v8, :cond_7

    .line 102
    const/4 v8, 0x0

    cmpg-float v8, v8, v2

    if-gez v8, :cond_5

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_5

    .line 103
    sub-float v8, v5, v6

    add-float v9, v5, v6

    div-float v3, v8, v9

    .line 112
    .local v3, f2:F
    :goto_1
    const/4 v8, 0x0

    aput v1, p3, v8

    .line 113
    const/4 v8, 0x1

    aput v3, p3, v8

    .line 114
    const/4 v8, 0x2

    aput v2, p3, v8

    .line 115
    return-void

    .line 89
    .end local v1           #f:F
    .end local v2           #f1:F
    .end local v3           #f2:F
    :cond_0
    cmpl-float v8, v5, v7

    if-nez v8, :cond_1

    cmpl-float v8, v4, v0

    if-ltz v8, :cond_1

    .line 90
    const/high16 v8, 0x4270

    sub-float v9, v4, v0

    mul-float/2addr v8, v9

    sub-float v9, v5, v6

    div-float v1, v8, v9

    .restart local v1       #f:F
    goto :goto_0

    .line 91
    .end local v1           #f:F
    :cond_1
    cmpl-float v8, v5, v7

    if-nez v8, :cond_2

    cmpg-float v8, v4, v0

    if-gez v8, :cond_2

    .line 92
    const/high16 v8, 0x43b4

    const/high16 v9, 0x4270

    sub-float v10, v4, v0

    mul-float/2addr v9, v10

    sub-float v10, v5, v6

    div-float/2addr v9, v10

    add-float v1, v8, v9

    .restart local v1       #f:F
    goto :goto_0

    .line 93
    .end local v1           #f:F
    :cond_2
    cmpl-float v8, v5, v4

    if-nez v8, :cond_3

    .line 94
    const/high16 v8, 0x42f0

    const/high16 v9, 0x4270

    sub-float v10, v0, v7

    mul-float/2addr v9, v10

    sub-float v10, v5, v6

    div-float/2addr v9, v10

    add-float v1, v8, v9

    .restart local v1       #f:F
    goto :goto_0

    .line 95
    .end local v1           #f:F
    :cond_3
    cmpl-float v8, v5, v0

    if-nez v8, :cond_4

    .line 96
    const/high16 v8, 0x4370

    const/high16 v9, 0x4270

    sub-float v10, v7, v4

    mul-float/2addr v9, v10

    sub-float v10, v5, v6

    div-float/2addr v9, v10

    add-float v1, v8, v9

    .restart local v1       #f:F
    goto :goto_0

    .line 98
    .end local v1           #f:F
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #f:F
    goto :goto_0

    .line 104
    .restart local v2       #f1:F
    :cond_5
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 105
    sub-float v8, v5, v6

    const/high16 v9, 0x4000

    add-float v10, v5, v6

    sub-float/2addr v9, v10

    div-float v3, v8, v9

    .restart local v3       #f2:F
    goto :goto_1

    .line 107
    .end local v3           #f2:F
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #f2:F
    goto :goto_1

    .line 110
    .end local v3           #f2:F
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #f2:F
    goto :goto_1
.end method

.method public static RgbToHsl(I[F)V
    .locals 3
    .parameter "color"
    .parameter "hsl"

    .prologue
    .line 118
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Llewa/graphics/ColorFilterUtils;->RgbToHsl(III[F)V

    .line 119
    return-void
.end method

.method public static RgbToHsv(III[F)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "hsv"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 25
    return-void
.end method

.method public static RgbToHsv(I[F)V
    .locals 0
    .parameter "color"
    .parameter "hsv"

    .prologue
    .line 28
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 29
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "min"
    .parameter "value"
    .parameter "max"

    .prologue
    .line 122
    cmpl-float v0, p1, p0

    if-lez v0, :cond_1

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "min"
    .parameter "value"
    .parameter "max"

    .prologue
    .line 126
    if-le p1, p0, :cond_1

    if-lt p1, p2, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method public static convertColorToGrayscale(I)I
    .locals 3
    .parameter "color"

    .prologue
    .line 130
    const v0, 0x3e991687

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f1645a2

    const v2, 0xff00

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3de978d5

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate(IIIII)I
    .locals 3
    .parameter "inMin"
    .parameter "inMax"
    .parameter "outMin"
    .parameter "outMax"
    .parameter "value"

    .prologue
    .line 136
    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate([F[FF[F)V
    .locals 5
    .parameter "hsl1"
    .parameter "hsl2"
    .parameter "amount"
    .parameter "hslOut"

    .prologue
    .line 141
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 142
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 143
    aget v2, p0, v0

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
