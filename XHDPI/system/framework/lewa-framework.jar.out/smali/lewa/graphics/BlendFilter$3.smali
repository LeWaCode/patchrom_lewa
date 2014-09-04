.class Llewa/graphics/BlendFilter$3;
.super Llewa/graphics/BlendFilter$Blender;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/graphics/BlendFilter;->getCurrentBlender()Llewa/graphics/BlendFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/graphics/BlendFilter;


# direct methods
.method constructor <init>(Llewa/graphics/BlendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Llewa/graphics/BlendFilter$3;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$Blender;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendColor(II)I
    .locals 6
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    const/4 v3, 0x3

    .line 190
    new-array v2, v3, [F

    .line 191
    .local v2, srcHsl:[F
    new-array v1, v3, [F

    .line 192
    .local v1, dstHsl:[F
    invoke-static {p2, v2}, Llewa/graphics/ColorFilterUtils;->RgbToHsl(I[F)V

    .line 193
    invoke-static {p1, v1}, Llewa/graphics/ColorFilterUtils;->RgbToHsl(I[F)V

    .line 194
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-static {v3, v4, v5}, Llewa/graphics/ColorFilterUtils;->HslToRgb(FFF)I

    move-result v0

    .line 195
    .local v0, blendedRgb:I
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    const v4, 0xffffff

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    return v3
.end method
