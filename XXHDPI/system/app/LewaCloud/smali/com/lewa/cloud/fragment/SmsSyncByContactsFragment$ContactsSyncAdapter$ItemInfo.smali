.class public Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "SmsSyncByContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field public mInfo:Ljava/lang/String;

.field public mInfoNum:I

.field public mName:Ljava/lang/String;

.field public mObj:Ljava/lang/Object;

.field public mSelected:Z

.field public mTime:Ljava/lang/String;

.field final synthetic this$1:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->this$1:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
