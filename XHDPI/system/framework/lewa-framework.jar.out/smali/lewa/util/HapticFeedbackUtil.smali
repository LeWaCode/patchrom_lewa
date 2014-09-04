.class public Llewa/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field public static final KEYBOARD_TAP_PATTERN:I = 0x3

.field private static final KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field public static final LONG_PRESS_PATTERN:I = 0x0

.field private static final LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final USE_SYSTEM_PATTERN:Z = false

.field public static final VIRTUAL_DOWN_PATTERN:I = 0x1

.field private static final VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field public static final VIRTUAL_UP_PATTERN:I = 0x2

.field private static final VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyboardTapVibePattern:[J

.field private mLongPressVibePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyUpVibePattern:[J

.field private mVirtualKeyVibePattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sys.haptic.tap.weak"

    aput-object v1, v0, v2

    const-string v1, "sys.haptic.tap.normal"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.tap.strong"

    aput-object v1, v0, v4

    sput-object v0, Llewa/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sys.haptic.long.weak"

    aput-object v1, v0, v2

    const-string v1, "sys.haptic.long.normal"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.long.strong"

    aput-object v1, v0, v4

    sput-object v0, Llewa/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sys.haptic.down.weak"

    aput-object v1, v0, v2

    const-string v1, "sys.haptic.down.normal"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.down.strong"

    aput-object v1, v0, v4

    sput-object v0, Llewa/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sys.haptic.up.weak"

    aput-object v1, v0, v2

    const-string v1, "sys.haptic.up.normal"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.up.strong"

    aput-object v1, v0, v4

    sput-object v0, Llewa/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "c"
    .parameter "onceOnly"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Llewa/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 58
    iput-object p1, p0, Llewa/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Llewa/util/HapticFeedbackUtil;->updateSettings()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Llewa/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Llewa/util/HapticFeedbackUtil$SettingsObserver;-><init>(Llewa/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    invoke-virtual {v0}, Llewa/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method static synthetic access$000(Llewa/util/HapticFeedbackUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Llewa/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 69
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 70
    const/4 v2, 0x0

    .line 77
    .local v2, out:[J
    :cond_0
    return-object v2

    .line 72
    .end local v2           #out:[J
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 73
    .restart local v2       #out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 74
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadHaptic(Ljava/lang/String;I)[J
    .locals 2
    .parameter "key"
    .parameter "defaultRes"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, hapString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Llewa/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Llewa/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Llewa/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "inpString"

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 91
    const/4 v4, 0x1

    new-array v2, v4, [J

    .line 92
    .local v2, returnByte:[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    .line 102
    :cond_0
    return-object v2

    .line 94
    .end local v2           #returnByte:[J
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, splitStr:[Ljava/lang/String;
    array-length v1, v3

    .line 96
    .local v1, los:I
    new-array v2, v1, [J

    .line 98
    .restart local v2       #returnByte:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 99
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSupportedEffect(I)Z
    .locals 1
    .parameter "effectId"

    .prologue
    .line 106
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 7
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v4, p0, Llewa/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 112
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p2, :cond_0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 145
    :cond_1
    :goto_1
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    .line 116
    .restart local v0       #hapticsDisabled:Z
    :pswitch_0
    iget-object v1, p0, Llewa/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 131
    .local v1, pattern:[J
    :goto_2
    if-eqz v1, :cond_4

    array-length v4, v1

    if-eqz v4, :cond_4

    .line 133
    :try_start_0
    array-length v4, v1

    if-ne v4, v3, :cond_3

    .line 134
    iget-object v4, p0, Llewa/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v2, v3

    .line 138
    goto :goto_1

    .line 119
    .end local v1           #pattern:[J
    :pswitch_1
    iget-object v1, p0, Llewa/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 120
    .restart local v1       #pattern:[J
    goto :goto_2

    .line 122
    .end local v1           #pattern:[J
    :pswitch_2
    iget-object v1, p0, Llewa/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 123
    .restart local v1       #pattern:[J
    goto :goto_2

    .line 125
    .end local v1           #pattern:[J
    :pswitch_3
    iget-object v1, p0, Llewa/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 126
    .restart local v1       #pattern:[J
    goto :goto_2

    .line 136
    :cond_3
    :try_start_1
    iget-object v4, p0, Llewa/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 139
    :catch_0
    move-exception v3

    goto :goto_1

    .line 142
    :cond_4
    const-string v3, "HapticFeedbackUtil"

    const-string v4, "vibrate: null or empty pattern"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateSettings()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    new-array v0, v4, [J

    const-wide/16 v1, 0x32

    aput-wide v1, v0, v3

    iput-object v0, p0, Llewa/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 163
    new-array v0, v4, [J

    aput-wide v5, v0, v3

    iput-object v0, p0, Llewa/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 164
    new-array v0, v4, [J

    aput-wide v5, v0, v3

    iput-object v0, p0, Llewa/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 165
    new-array v0, v4, [J

    const-wide/16 v1, 0xa

    aput-wide v1, v0, v3

    iput-object v0, p0, Llewa/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 167
    return-void
.end method
