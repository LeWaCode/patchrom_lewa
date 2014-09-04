.class public Lcom/lewa/bi/common/data/collect/ConfigItem;
.super Ljava/lang/Object;
.source "ConfigItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;,
        Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private collectFrequencyInterval:I
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "cfi"
    .end annotation
.end field

.field private collectFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "cf"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private reportFrequencyInterval:I
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "rfi"
    .end annotation
.end field

.field private reportFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "rf"
    .end annotation
.end field

.field private sendNetwork:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "net"
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getCollectFrequencyInterval()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyInterval:I

    return v0
.end method

.method public getCollectFrequencyType()Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReportFrequencyInterval()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyInterval:I

    return v0
.end method

.method public getReportFrequencyType()Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    return-object v0
.end method

.method public getSendNetwork()Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->sendNetwork:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectFrequencyInterval(I)V
    .locals 0
    .parameter "collectFrequencyInterval"

    .prologue
    .line 102
    iput p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyInterval:I

    .line 103
    return-void
.end method

.method public setCollectFrequencyType(Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;)V
    .locals 0
    .parameter "collectfrequencyType"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    .line 107
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->name:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setReportFrequencyInterval(I)V
    .locals 0
    .parameter "reportFrequencyInterval"

    .prologue
    .line 114
    iput p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyInterval:I

    .line 115
    return-void
.end method

.method public setReportFrequencyType(Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;)V
    .locals 0
    .parameter "reportfrequencyType"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    .line 119
    return-void
.end method

.method public setSendNetwork(Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;)V
    .locals 0
    .parameter "sendNetwork"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->sendNetwork:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    .line 123
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->value:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectFrequencyType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "collectFrequencyInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->collectFrequencyInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportFrequencyType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyType:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reportFrequencyInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->reportFrequencyInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->sendNetwork:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNetwork="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->sendNetwork:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->value:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ConfigItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method
