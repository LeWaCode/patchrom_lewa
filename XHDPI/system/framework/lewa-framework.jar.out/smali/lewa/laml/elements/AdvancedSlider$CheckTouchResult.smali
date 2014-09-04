.class Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTouchResult"
.end annotation


# instance fields
.field public endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

.field public reached:Z

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Llewa/laml/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;-><init>(Llewa/laml/elements/AdvancedSlider;)V

    return-void
.end method
