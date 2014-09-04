.class public Lcom/lewa/bi/common/api/collect/AppEventRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "AppEventRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appEvents:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/AppEventRequest;->appEvents:Ljava/util/List;

    return-object v0
.end method

.method public setAppEvents(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/AppEventRequest;->appEvents:Ljava/util/List;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/AppEventRequest;->appEvents:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
