.class Llewa/graphics/BlendFilter$21;
.super Llewa/graphics/BlendFilter$BlenderPerChannel;
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
    .line 357
    iput-object p1, p0, Llewa/graphics/BlendFilter$21;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$BlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x4000

    .line 360
    const/high16 v0, 0x3f00

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 361
    mul-float v0, v4, p1

    mul-float/2addr v0, p2

    mul-float v1, p1, p1

    mul-float v2, v4, p2

    sub-float v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 363
    :goto_0
    return v0

    :cond_0
    mul-float v0, v4, p1

    sub-float v1, v5, p2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-float/2addr v4, p2

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
