.class Llewa/graphics/BlendFilter$14;
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
    .line 295
    iput-object p1, p0, Llewa/graphics/BlendFilter$14;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$BlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 298
    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    return v0
.end method
