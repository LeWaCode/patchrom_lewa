.class Llewa/widget/ArrowPageHeader$ColorSet;
.super Ljava/lang/Object;
.source "ArrowPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/ArrowPageHeader;
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

.field final synthetic this$0:Llewa/widget/ArrowPageHeader;


# direct methods
.method constructor <init>(Llewa/widget/ArrowPageHeader;I)V
    .locals 0
    .parameter
    .parameter "color"

    .prologue
    .line 553
    iput-object p1, p0, Llewa/widget/ArrowPageHeader$ColorSet;->this$0:Llewa/widget/ArrowPageHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    invoke-virtual {p0, p2}, Llewa/widget/ArrowPageHeader$ColorSet;->setColor(I)V

    .line 555
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 565
    iget v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    iget v1, p0, Llewa/widget/ArrowPageHeader$ColorSet;->red:I

    iget v2, p0, Llewa/widget/ArrowPageHeader$ColorSet;->green:I

    iget v3, p0, Llewa/widget/ArrowPageHeader$ColorSet;->blue:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 3
    .parameter "alphaOverride"

    .prologue
    .line 569
    iget v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->red:I

    iget v1, p0, Llewa/widget/ArrowPageHeader$ColorSet;->green:I

    iget v2, p0, Llewa/widget/ArrowPageHeader$ColorSet;->blue:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 558
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    .line 559
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->red:I

    .line 560
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->green:I

    .line 561
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Llewa/widget/ArrowPageHeader$ColorSet;->blue:I

    .line 562
    return-void
.end method
