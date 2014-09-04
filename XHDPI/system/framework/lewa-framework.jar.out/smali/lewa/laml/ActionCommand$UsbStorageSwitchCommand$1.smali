.class Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;
.super Ljava/lang/Thread;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Llewa/laml/ActionCommand$UsbStorageSwitchCommand;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

    iput-boolean p2, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 863
    iget-boolean v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->val$on:Z

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

    #getter for: Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->access$300(Llewa/laml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 867
    :goto_0
    iget-object v1, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

    iget-boolean v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->val$on:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    .line 868
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

    #getter for: Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;->access$300(Llewa/laml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0

    .line 867
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
