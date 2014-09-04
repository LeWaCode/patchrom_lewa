.class public Llewa/bi/sim/LewaSimManagerHelp$SimComparator;
.super Ljava/lang/Object;
.source "LewaSimManagerHelp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/sim/LewaSimManagerHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Llewa/bi/sim/LewaSimManagerHelp$SimInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    check-cast p1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    .end local p1
    check-cast p2, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Llewa/bi/sim/LewaSimManagerHelp$SimComparator;->compare(Llewa/bi/sim/LewaSimManagerHelp$SimInfo;Llewa/bi/sim/LewaSimManagerHelp$SimInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Llewa/bi/sim/LewaSimManagerHelp$SimInfo;Llewa/bi/sim/LewaSimManagerHelp$SimInfo;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 75
    iget v0, p2, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->slot:I

    .line 76
    .local v0, o1:I
    iget v1, p1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->slot:I

    .line 77
    .local v1, o2:I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
