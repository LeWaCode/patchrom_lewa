.class Lcom/lewa/cloud/widget/PagerHeader$ColorSet;
.super Ljava/lang/Object;
.source "PagerHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/widget/PagerHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSet"
.end annotation


# instance fields
.field public alpha:I

.field public blue:I

.field public green:I

.field public red:I

.field final synthetic this$0:Lcom/lewa/cloud/widget/PagerHeader;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/widget/PagerHeader;I)V
    .locals 0
    .parameter
    .parameter "color"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->this$0:Lcom/lewa/cloud/widget/PagerHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    invoke-virtual {p0, p2}, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->setColor(I)V

    .line 556
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 566
    iget v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->alpha:I

    iget v1, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->red:I

    iget v2, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->green:I

    iget v3, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->blue:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 3
    .parameter "alphaOverride"

    .prologue
    .line 570
    iget v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->red:I

    iget v1, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->green:I

    iget v2, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->blue:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 559
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->alpha:I

    .line 560
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->red:I

    .line 561
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->green:I

    .line 562
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/widget/PagerHeader$ColorSet;->blue:I

    .line 563
    return-void
.end method
