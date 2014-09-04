.class public Llewa/graphics/EdgesFilter;
.super Ljava/lang/Object;
.source "EdgesFilter.java"

# interfaces
.implements Llewa/graphics/IBitmapFilter;


# static fields
.field private static sTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Llewa/graphics/EdgesFilter;->sTempHsl:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Llewa/graphics/BitmapInfo;)V
    .locals 19
    .parameter "imgData"

    .prologue
    .line 11
    move-object/from16 v0, p1

    iget v12, v0, Llewa/graphics/BitmapInfo;->width:I

    .line 12
    .local v12, width:I
    move-object/from16 v0, p1

    iget v6, v0, Llewa/graphics/BitmapInfo;->height:I

    .line 13
    .local v6, height:I
    move-object/from16 v0, p1

    iget-object v11, v0, Llewa/graphics/BitmapInfo;->pixels:[I

    .line 14
    .local v11, pixels:[I
    const/4 v15, 0x2

    new-array v1, v15, [I

    const/4 v15, 0x0

    aput v12, v1, v15

    const/4 v15, 0x1

    aput v6, v1, v15

    .line 17
    .local v1, ai:[I
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[I

    move-object v8, v15

    check-cast v8, [[I

    .line 18
    .local v8, luminance:[[I
    const/4 v14, 0x0

    .local v14, y:I
    :goto_0
    if-ge v14, v6, :cond_1

    .line 19
    const/4 v13, 0x0

    .local v13, x:I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 20
    mul-int v15, v14, v12

    add-int/2addr v15, v13

    aget v2, v11, v15

    .line 21
    .local v2, color:I
    aget-object v15, v8, v13

    invoke-static {v2}, Llewa/graphics/ColorFilterUtils;->convertColorToGrayscale(I)I

    move-result v16

    aput v16, v15, v14

    .line 19
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 18
    .end local v2           #color:I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 25
    .end local v13           #x:I
    :cond_1
    const/4 v7, 0x1

    .local v7, i:I
    :goto_2
    add-int/lit8 v15, v6, -0x1

    if-ge v7, v15, :cond_3

    .line 26
    const/4 v13, 0x1

    .restart local v13       #x:I
    :goto_3
    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_2

    .line 27
    mul-int v15, v7, v12

    add-int v3, v13, v15

    .line 28
    .local v3, colorIndex:I
    add-int/lit8 v15, v13, -0x1

    aget-object v15, v8, v15

    add-int/lit8 v16, v7, -0x1

    aget v15, v15, v16

    neg-int v15, v15

    add-int/lit8 v16, v13, -0x1

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x1

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    aget v16, v16, v17

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x1

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    mul-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    aget v16, v16, v17

    sub-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    add-int v4, v15, v16

    .line 30
    .local v4, grayX:I
    add-int/lit8 v15, v13, -0x1

    aget-object v15, v8, v15

    add-int/lit8 v16, v7, -0x1

    aget v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    mul-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    aget v16, v16, v17

    sub-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v16, v8, v16

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    sub-int v5, v15, v16

    .line 35
    .local v5, grayY:I
    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    add-int v16, v16, v17

    const/16 v17, 0xff

    invoke-static/range {v15 .. v17}, Llewa/graphics/ColorFilterUtils;->clamp(III)I

    move-result v15

    rsub-int v9, v15, 0xff

    .line 37
    .local v9, magnitude:I
    aget v15, v11, v3

    sget-object v16, Llewa/graphics/EdgesFilter;->sTempHsl:[F

    invoke-static/range {v15 .. v16}, Llewa/graphics/ColorFilterUtils;->RgbToHsl(I[F)V

    .line 38
    sget-object v15, Llewa/graphics/EdgesFilter;->sTempHsl:[F

    const/16 v16, 0x2

    int-to-float v0, v9

    move/from16 v17, v0

    const/high16 v18, 0x437f

    div-float v17, v17, v18

    aput v17, v15, v16

    .line 39
    sget-object v15, Llewa/graphics/EdgesFilter;->sTempHsl:[F

    invoke-static {v15}, Llewa/graphics/ColorFilterUtils;->HslToRgb([F)I

    move-result v10

    .line 40
    .local v10, newRgb:I
    const v15, 0xffffff

    and-int/2addr v15, v10

    const/high16 v16, -0x100

    aget v17, v11, v3

    and-int v16, v16, v17

    or-int v15, v15, v16

    aput v15, v11, v3

    .line 26
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 25
    .end local v3           #colorIndex:I
    .end local v4           #grayX:I
    .end local v5           #grayY:I
    .end local v9           #magnitude:I
    .end local v10           #newRgb:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 45
    .end local v13           #x:I
    :cond_3
    return-void
.end method
