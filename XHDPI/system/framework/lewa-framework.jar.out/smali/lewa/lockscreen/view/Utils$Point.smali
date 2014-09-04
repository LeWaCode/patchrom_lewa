.class public Llewa/lockscreen/view/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 49
    iput-wide p3, p0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 50
    return-void
.end method


# virtual methods
.method public Offset(Llewa/lockscreen/view/Utils$Point;)V
    .locals 10
    .parameter "point"

    .prologue
    .line 21
    iget-wide v0, p0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 22
    .local v0, dx:D
    iget-wide v2, p1, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 24
    .local v2, dxx:D
    add-double v8, v0, v2

    iput-wide v8, p0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 26
    iget-wide v4, p0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 27
    .local v4, dy:D
    iget-wide v6, p1, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 29
    .local v6, dyy:D
    add-double v8, v4, v6

    iput-wide v8, p0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 30
    return-void
.end method

.method minus(Llewa/lockscreen/view/Utils$Point;)Llewa/lockscreen/view/Utils$Point;
    .locals 13
    .parameter "point"

    .prologue
    .line 34
    iget-wide v0, p0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 35
    .local v0, dx:D
    iget-wide v2, p1, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 37
    .local v2, dxx:D
    iget-wide v4, p0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 38
    .local v4, dy:D
    iget-wide v6, p1, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 40
    .local v6, dyy:D
    new-instance v8, Llewa/lockscreen/view/Utils$Point;

    sub-double v9, v0, v2

    sub-double v11, v4, v6

    invoke-direct {v8, v9, v10, v11, v12}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    return-object v8
.end method
