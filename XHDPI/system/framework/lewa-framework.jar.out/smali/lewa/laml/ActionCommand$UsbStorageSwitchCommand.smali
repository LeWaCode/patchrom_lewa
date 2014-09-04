.class Llewa/laml/ActionCommand$UsbStorageSwitchCommand;
.super Llewa/laml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "UsbStorage"


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 892
    const-string v0, "usb_mode"

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/ActionCommand$NotificationReceiver;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v0, Llewa/laml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Llewa/laml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    .line 894
    return-void
.end method

.method static synthetic access$300(Llewa/laml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 846
    iget-object v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 857
    iget-object v2, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_0

    .line 858
    iget-object v2, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    .line 859
    .local v0, enabled:Z
    iget-object v2, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 860
    .local v1, on:Z
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    .line 861
    new-instance v2, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;

    invoke-direct {v2, p0, v1}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Llewa/laml/ActionCommand$UsbStorageSwitchCommand;Z)V

    invoke-virtual {v2}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    .line 871
    .end local v0           #enabled:Z
    .end local v1           #on:Z
    :cond_0
    return-void

    .line 859
    .restart local v0       #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v2, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 874
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 875
    invoke-super {p0, p1, p2, p3}, Llewa/laml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 879
    iget-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 880
    iget-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 882
    iget-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 883
    const-string v1, "ActionCommand"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    .line 888
    .local v0, enabled:Z
    iget-boolean v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, v1}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
