.class public Lcom/yulore/yellowsdkapi/entity/PkgInfo;
.super Ljava/lang/Object;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private pkgSize:F

.field private pkgUrl:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSize()F
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgSize:F

    return v0
.end method

.method public getPkgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->ver:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPkgSize(F)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgSize:F

    return-void
.end method

.method public setPkgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgUrl:Ljava/lang/String;

    return-void
.end method

.method public setVer(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->ver:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PkgInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->ver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->pkgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
