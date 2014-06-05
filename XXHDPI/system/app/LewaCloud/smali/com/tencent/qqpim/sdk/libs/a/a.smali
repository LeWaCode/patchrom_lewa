.class public abstract Lcom/tencent/qqpim/sdk/libs/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/libs/a/a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
.end method

.method public abstract b()V
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/libs/a/a;->a:I

    return-void
.end method

.method public abstract c()V
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/tencent/qqpim/sdk/libs/a/a;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/a/a;->a:I

    iget v1, p1, Lcom/tencent/qqpim/sdk/libs/a/a;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/a/a;->a:I

    return v0
.end method
