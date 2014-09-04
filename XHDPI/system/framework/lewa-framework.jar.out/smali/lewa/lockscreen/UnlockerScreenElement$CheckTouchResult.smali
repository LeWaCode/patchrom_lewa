.class Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTouchResult"
.end annotation


# instance fields
.field public endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;

.field public unlocked:Z


# direct methods
.method private constructor <init>(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;-><init>(Llewa/lockscreen/UnlockerScreenElement;)V

    return-void
.end method
