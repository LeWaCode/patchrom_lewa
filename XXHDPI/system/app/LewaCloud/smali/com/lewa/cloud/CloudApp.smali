.class public Lcom/lewa/cloud/CloudApp;
.super Landroid/app/Application;
.source "CloudApp.java"


# static fields
.field public static mSDKVersion:I


# instance fields
.field private mActivitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field public mSettingOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/cloud/CloudApp;->mSettingOpened:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    .line 22
    sput-object p0, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static getSDKVersion()I
    .locals 2

    .prologue
    .line 35
    const-string v0, "com.lewa.cloud.sdk"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lewa/cloud/CloudApp;->mSDKVersion:I

    .line 36
    sget v0, Lcom/lewa/cloud/CloudApp;->mSDKVersion:I

    return v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/lewa/cloud/CloudApp;->mActivitys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 56
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 59
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 60
    return-void
.end method

.method public getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    invoke-static {}, Lcom/lewa/cloud/CloudApp;->getSDKVersion()I

    .line 30
    invoke-static {p0}, Lcom/lewa/cloud/manager/CloudManagerFactory;->getCloudManager(Landroid/content/Context;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/CloudApp;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 31
    iget-object v0, p0, Lcom/lewa/cloud/CloudApp;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->init()Z

    .line 32
    return-void
.end method
