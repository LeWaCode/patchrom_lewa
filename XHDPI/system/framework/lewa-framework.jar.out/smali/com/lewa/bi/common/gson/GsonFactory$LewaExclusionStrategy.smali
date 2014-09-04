.class public Lcom/lewa/bi/common/gson/GsonFactory$LewaExclusionStrategy;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/lewa/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/gson/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LewaExclusionStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
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
    .line 31
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipField(Lcom/lewa/gson/FieldAttributes;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
