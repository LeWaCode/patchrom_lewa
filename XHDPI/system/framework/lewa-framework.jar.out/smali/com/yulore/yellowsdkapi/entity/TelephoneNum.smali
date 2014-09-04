.class public Lcom/yulore/yellowsdkapi/entity/TelephoneNum;
.super Ljava/lang/Object;


# instance fields
.field private telDesc:Ljava/lang/String;

.field private telFlag:Ljava/lang/String;

.field private telNum:Ljava/lang/String;

.field private telRanking:I

.field private telSource:Ljava/lang/String;

.field private telType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTelDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTelFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTelRanking()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telRanking:I

    return v0
.end method

.method public getTelSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTelType()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telType:I

    return v0
.end method

.method public setTelDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telDesc:Ljava/lang/String;

    return-void
.end method

.method public setTelFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telFlag:Ljava/lang/String;

    return-void
.end method

.method public setTelNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telNum:Ljava/lang/String;

    return-void
.end method

.method public setTelRanking(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telRanking:I

    return-void
.end method

.method public setTelSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telSource:Ljava/lang/String;

    return-void
.end method

.method public setTelType(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephoneNum [telDesc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telRanking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telRanking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->telFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
