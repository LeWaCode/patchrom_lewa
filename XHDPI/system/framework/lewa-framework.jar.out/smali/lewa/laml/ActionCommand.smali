.class public abstract Llewa/laml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/ActionCommand$1;,
        Llewa/laml/ActionCommand$WifiSwitchCommand;,
        Llewa/laml/ActionCommand$WifiStateTracker;,
        Llewa/laml/ActionCommand$VisibilityProperty;,
        Llewa/laml/ActionCommand$Command;,
        Llewa/laml/ActionCommand$ExternCommand;,
        Llewa/laml/ActionCommand$VariableBinderCommand;,
        Llewa/laml/ActionCommand$VariableAssignmentCommand;,
        Llewa/laml/ActionCommand$UsbStorageSwitchCommand;,
        Llewa/laml/ActionCommand$StatefulActionCommand;,
        Llewa/laml/ActionCommand$StateTracker;,
        Llewa/laml/ActionCommand$SoundCommand;,
        Llewa/laml/ActionCommand$RingModeCommand;,
        Llewa/laml/ActionCommand$PropertyCommand;,
        Llewa/laml/ActionCommand$OnOffCommandHelper;,
        Llewa/laml/ActionCommand$NotificationReceiver;,
        Llewa/laml/ActionCommand$ModeToggleHelper;,
        Llewa/laml/ActionCommand$IntentCommand;,
        Llewa/laml/ActionCommand$DelayCommand;,
        Llewa/laml/ActionCommand$DataSwitchCommand;,
        Llewa/laml/ActionCommand$ConditionCommand;,
        Llewa/laml/ActionCommand$BluetoothSwitchCommand;,
        Llewa/laml/ActionCommand$AnimationProperty;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mRoot:Llewa/laml/ScreenElementRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Llewa/laml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Llewa/laml/ActionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 58
    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Llewa/laml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/ActionCommand;
    .locals 3
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 62
    new-instance v1, Llewa/laml/util/Variable;

    invoke-direct {v1, p1}, Llewa/laml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, targetObj:Llewa/laml/util/Variable;
    invoke-virtual {v1}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {p0, p1, p2}, Llewa/laml/ActionCommand$PropertyCommand;->create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/ActionCommand$PropertyCommand;

    move-result-object v2

    .line 77
    .end local v1           #targetObj:Llewa/laml/util/Variable;
    :goto_0
    return-object v2

    .line 65
    .restart local v1       #targetObj:Llewa/laml/util/Variable;
    :cond_0
    invoke-virtual {v1}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, property:Ljava/lang/String;
    const-string v2, "RingMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Llewa/laml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Llewa/laml/ActionCommand$RingModeCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "Wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    new-instance v2, Llewa/laml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Llewa/laml/ActionCommand$WifiSwitchCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "Data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    new-instance v2, Llewa/laml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Llewa/laml/ActionCommand$DataSwitchCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v2, "Bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    new-instance v2, Llewa/laml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Llewa/laml/ActionCommand$BluetoothSwitchCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v2, "UsbStorage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    new-instance v2, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Llewa/laml/ActionCommand$UsbStorageSwitchCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0           #property:Ljava/lang/String;
    .end local v1           #targetObj:Llewa/laml/util/Variable;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static create(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/ActionCommand;
    .locals 11
    .parameter "ele"
    .parameter "root"

    .prologue
    const-wide/16 v9, 0x0

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v3, 0x0

    .line 108
    :goto_0
    return-object v3

    .line 83
    :cond_0
    const-string v8, "condition"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    .line 84
    .local v0, condition:Llewa/laml/data/Expression;
    const-string v8, "delay"

    invoke-static {p0, v8, v9, v10}, Llewa/laml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v1

    .line 85
    .local v1, delay:J
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, tag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, ret:Llewa/laml/ActionCommand;
    const-string v8, "Command"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    const-string v8, "target"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, target:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, value:Ljava/lang/String;
    invoke-static {p1, v6, v7}, Llewa/laml/ActionCommand;->create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/ActionCommand;

    move-result-object v3

    move-object v4, v3

    .line 102
    .end local v3           #ret:Llewa/laml/ActionCommand;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .local v4, ret:Llewa/laml/ActionCommand;
    :goto_1
    if-eqz v4, :cond_7

    .line 103
    cmp-long v8, v1, v9

    if-lez v8, :cond_1

    .line 104
    new-instance v3, Llewa/laml/ActionCommand$DelayCommand;

    invoke-direct {v3, v4, v1, v2}, Llewa/laml/ActionCommand$DelayCommand;-><init>(Llewa/laml/ActionCommand;J)V

    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .line 105
    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    :cond_1
    if-eqz v0, :cond_7

    .line 106
    new-instance v3, Llewa/laml/ActionCommand$ConditionCommand;

    invoke-direct {v3, v4, v0}, Llewa/laml/ActionCommand$ConditionCommand;-><init>(Llewa/laml/ActionCommand;Llewa/laml/data/Expression;)V

    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    goto :goto_0

    .line 91
    :cond_2
    const-string v8, "VariableCommand"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    new-instance v3, Llewa/laml/ActionCommand$VariableAssignmentCommand;

    .end local v3           #ret:Llewa/laml/ActionCommand;
    invoke-direct {v3, p1, p0}, Llewa/laml/ActionCommand$VariableAssignmentCommand;-><init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1

    .line 93
    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    :cond_3
    const-string v8, "BinderCommand"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    new-instance v3, Llewa/laml/ActionCommand$VariableBinderCommand;

    .end local v3           #ret:Llewa/laml/ActionCommand;
    invoke-direct {v3, p1, p0}, Llewa/laml/ActionCommand$VariableBinderCommand;-><init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1

    .line 95
    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    :cond_4
    const-string v8, "IntentCommand"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 96
    new-instance v3, Llewa/laml/ActionCommand$IntentCommand;

    .end local v3           #ret:Llewa/laml/ActionCommand;
    invoke-direct {v3, p1, p0}, Llewa/laml/ActionCommand$IntentCommand;-><init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1

    .line 97
    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    :cond_5
    const-string v8, "SoundCommand"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 98
    new-instance v3, Llewa/laml/ActionCommand$SoundCommand;

    .end local v3           #ret:Llewa/laml/ActionCommand;
    invoke-direct {v3, p1, p0}, Llewa/laml/ActionCommand$SoundCommand;-><init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1

    .line 99
    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    :cond_6
    const-string v8, "ExternCommand"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 100
    new-instance v3, Llewa/laml/ActionCommand$ExternCommand;

    .end local v3           #ret:Llewa/laml/ActionCommand;
    invoke-direct {v3, p1, p0}, Llewa/laml/ActionCommand$ExternCommand;-><init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v3       #ret:Llewa/laml/ActionCommand;
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1

    :cond_7
    move-object v3, v4

    .end local v4           #ret:Llewa/laml/ActionCommand;
    .restart local v3       #ret:Llewa/laml/ActionCommand;
    goto/16 :goto_0

    :cond_8
    move-object v4, v3

    .end local v3           #ret:Llewa/laml/ActionCommand;
    .restart local v4       #ret:Llewa/laml/ActionCommand;
    goto :goto_1
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected getRoot()Llewa/laml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Llewa/laml/ActionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Llewa/laml/ActionCommand;->doPerform()V

    .line 128
    iget-object v0, p0, Llewa/laml/ActionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->requestUpdate()V

    .line 129
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
