.class public Lcom/tencent/qqpim/sdk/defines/PhotoEntity;
.super Ljava/lang/Object;


# instance fields
.field private mContactId:Ljava/lang/String;

.field private mPhotoData:[B

.field private mPhotoMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mContactId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoData:[B

    return-void
.end method


# virtual methods
.method public getmContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoData()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoData:[B

    return-object v0
.end method

.method public getmPhotoMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setmContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mContactId:Ljava/lang/String;

    return-void
.end method

.method public setmPhotoData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoData:[B

    return-void
.end method

.method public setmPhotoMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->mPhotoMd5:Ljava/lang/String;

    return-void
.end method
