.class public Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ac2573ad022ec72L


# instance fields
.field private calllogCount:I

.field private contactCount:I

.field private transient installedSoftware:Ljava/util/List;

.field private smsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalllogCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->calllogCount:I

    return v0
.end method

.method public getContactCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->contactCount:I

    return v0
.end method

.method public getInstalledSoftware()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->installedSoftware:Ljava/util/List;

    return-object v0
.end method

.method public getSmsCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->smsCount:I

    return v0
.end method

.method public setCalllogCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->calllogCount:I

    return-void
.end method

.method public setContactCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->contactCount:I

    return-void
.end method

.method public setInstalledSoftware(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->installedSoftware:Ljava/util/List;

    return-void
.end method

.method public setSmsCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->smsCount:I

    return-void
.end method
