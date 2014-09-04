.class abstract Llewa/graphics/BlendFilter$BlenderPerChannel;
.super Llewa/graphics/BlendFilter$Blender;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/graphics/BlendFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/graphics/BlendFilter;


# direct methods
.method constructor <init>(Llewa/graphics/BlendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Llewa/graphics/BlendFilter$BlenderPerChannel;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$Blender;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendChannel(FF)F
.end method

.method public blendColor(II)I
    .locals 15
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    .line 87
    ushr-int/lit8 v10, p2, 0x10

    and-int/lit16 v9, v10, 0xff

    .line 88
    .local v9, srcR:I
    ushr-int/lit8 v10, p2, 0x8

    and-int/lit16 v8, v10, 0xff

    .line 89
    .local v8, srcG:I
    move/from16 v0, p2

    and-int/lit16 v4, v0, 0xff

    .line 90
    .local v4, srcB:I
    ushr-int/lit8 v10, p1, 0x10

    and-int/lit16 v3, v10, 0xff

    .line 91
    .local v3, dstR:I
    ushr-int/lit8 v10, p1, 0x8

    and-int/lit16 v2, v10, 0xff

    .line 92
    .local v2, dstG:I
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0xff

    .line 93
    .local v1, dstB:I
    const/high16 v10, 0x437f

    const/4 v11, 0x0

    int-to-float v12, v3

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v9

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    invoke-virtual {p0, v12, v13}, Llewa/graphics/BlendFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 95
    .local v7, srcBlendedR:I
    const/high16 v10, 0x437f

    const/4 v11, 0x0

    int-to-float v12, v2

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v8

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    invoke-virtual {p0, v12, v13}, Llewa/graphics/BlendFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .line 97
    .local v6, srcBlendedG:I
    const/high16 v10, 0x437f

    const/4 v11, 0x0

    int-to-float v12, v1

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v4

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    invoke-virtual {p0, v12, v13}, Llewa/graphics/BlendFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 99
    .local v5, srcBlendedB:I
    const/high16 v10, -0x100

    and-int v10, v10, p2

    shl-int/lit8 v11, v7, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v5

    return v10
.end method
