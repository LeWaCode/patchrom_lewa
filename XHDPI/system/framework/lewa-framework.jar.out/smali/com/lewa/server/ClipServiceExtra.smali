.class public Lcom/lewa/server/ClipServiceExtra;
.super Llewa/content/IClipServiceExtra$Stub;
.source "ClipServiceExtra.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClipExtraService"

.field private static final MAX_CLIP_DATA_NUMBER:I = 0x14

.field private static final MIN_CLIP_DATA_NUMBER:I = 0x3


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Llewa/content/IClipServiceExtra$Stub;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 18
    .local v0, size:I
    const-string v1, "ClipExtraService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add in service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 21
    :cond_0
    return-void
.end method

.method public getData(I)Ljava/util/List;
    .locals 3
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 25
    .local v0, size:I
    if-ge v0, p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    .line 27
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lewa/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
