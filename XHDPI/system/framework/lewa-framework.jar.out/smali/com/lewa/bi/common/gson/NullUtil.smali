.class public Lcom/lewa/bi/common/gson/NullUtil;
.super Ljava/lang/Object;
.source "NullUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isNullType(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/lewa/bi/common/data/Null;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeNullType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/lewa/bi/common/gson/NullUtil;->isNullType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    return-object p0
.end method

.method public static normalizeNullType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/lewa/bi/common/gson/NullUtil;->isNullType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 p1, 0x0

    .line 36
    .end local p1           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object p1

    .line 35
    .restart local p1       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    goto :goto_0
.end method
