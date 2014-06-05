.class public Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
.super Ljava/lang/Object;
.source "CloudManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResult"
.end annotation


# instance fields
.field public mAdd:I

.field public mAvalible:Z

.field public mDel:I

.field public mFinished:Z

.field public mModify:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
