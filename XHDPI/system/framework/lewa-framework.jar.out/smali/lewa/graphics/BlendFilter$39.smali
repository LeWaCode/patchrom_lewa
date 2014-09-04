.class Llewa/graphics/BlendFilter$39;
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
    .line 551
    iput-object p1, p0, Llewa/graphics/BlendFilter$39;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 2
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 554
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 2
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    const/high16 v1, 0x3f80

    .line 558
    sub-float v0, v1, p3

    mul-float/2addr v0, p2

    sub-float/2addr v1, p4

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
