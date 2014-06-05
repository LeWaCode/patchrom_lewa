.class Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfo"
.end annotation


# instance fields
.field public mInfo:Ljava/lang/String;

.field public mPicId:I

.field public mTitleId:I

.field final synthetic this$1:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "picId"
    .parameter "titleId"
    .parameter "info"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->this$1:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mPicId:I

    .line 183
    iput p3, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mTitleId:I

    .line 184
    iput-object p4, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    .line 185
    return-void
.end method
