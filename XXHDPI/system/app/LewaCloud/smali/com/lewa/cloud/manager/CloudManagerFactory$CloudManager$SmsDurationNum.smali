.class public Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
.super Ljava/lang/Object;
.source "CloudManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsDurationNum"
.end annotation


# instance fields
.field public mAllNum:I

.field public mLastMonthNum:I

.field public mLastSixMonthNum:I

.field public mLastThreeMonthNum:I

.field public mLastYearNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
