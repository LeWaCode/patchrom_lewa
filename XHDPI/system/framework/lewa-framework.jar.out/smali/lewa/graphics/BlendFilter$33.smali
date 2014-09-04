.class Llewa/graphics/BlendFilter$33;
.super Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/graphics/BlendFilter;->getCurrentPorterDuffBlender()Llewa/graphics/BlendFilter$PorterDuffBlender;
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
    .line 485
    iput-object p1, p0, Llewa/graphics/BlendFilter$33;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 0
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 488
    return p1
.end method

.method public blendChannel(FFFF)F
    .locals 2
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 492
    mul-float v0, p2, p3

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p4

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method
