.class Llewa/laml/ActionCommand$BluetoothSwitchCommand;
.super Llewa/laml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "Bluetooth"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 206
    const-string v0, "bluetooth_state"

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/ActionCommand$NotificationReceiver;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Llewa/laml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Llewa/laml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    .line 208
    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 167
    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_3

    .line 173
    iget-boolean v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 175
    iput-boolean v2, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->update()V

    .line 191
    :cond_1
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 178
    iput-boolean v3, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 180
    :cond_3
    iget-boolean v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v1, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 183
    iput-boolean v3, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 186
    iput-boolean v2, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 196
    iget-boolean v1, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    .line 197
    iput-boolean v0, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-boolean v1, p0, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_0
.end method
